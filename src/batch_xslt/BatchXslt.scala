import net.sf.saxon.s9api.Processor
import javax.xml.transform.stream.StreamSource
import java.io.File
import java.io.FileInputStream
import java.nio.file.FileSystems
import java.nio.file.Files
import java.net.URI
import collection.JavaConversions.mapAsJavaMap

/**
 * Exectute an XSLT over a set of XML files and deposit the results in a
 * zip archive.
 *
 * Input:
 *   - A list of XML files from STDIN.
 *   - XSL file (first command line arg)
 *   - ZIP file path (second command line arg)
 *
 * Output:
 *   - A zip file of XML files.
 */
object BatchXslt {
  def main(args: Array[String]) {

    val xslFileName = args(0)
    val outputZip = args(1)

    val proc = new Processor(false)
    val xslSource = new StreamSource(new File(xslFileName))
    val xslt = proc.newXsltCompiler.compile(xslSource).load

    val env = Map("create" -> "true")
    val uri = URI.create("jar:file:" + outputZip)
    val fs = FileSystems.newFileSystem(uri, env)

    for (line <- io.Source.stdin.getLines) {
      println(line)

      val xmlFile = new File(line)
      val xml = new FileInputStream(xmlFile)

      val path = fs.getPath(xmlFile.getName)
      val out = Files.newOutputStream(path)
      val dest = proc.newSerializer(out)

      xslt.setSource(new StreamSource(xml))
      xslt.setDestination(dest)

      try {
        xslt.transform
      } catch {
        case e: Exception => println("Filed to transform")
      }

      dest.close
      out.close
      xml.close
    }

    fs.close
  }
}
