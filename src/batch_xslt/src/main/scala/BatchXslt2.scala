import net.sf.saxon.s9api.{Processor, XsltTransformer}
import javax.xml.transform.stream.StreamSource
import java.io.File
import java.nio.file.attribute.BasicFileAttributes
import java.nio.file.FileSystem
import java.nio.file.FileSystems
import java.nio.file.Files
import java.nio.file.FileVisitResult
import java.nio.file.Path
import java.nio.file.SimpleFileVisitor
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
object BatchXslt2 {
  def main(args: Array[String]) {

    val xslFileName = args(0)
    val inputZip = args(1)
    val outputZip = args(2)

    val outFs = {
      val env = Map("create" -> "true")
      val uri = URI.create("jar:file:" + outputZip)
      FileSystems.newFileSystem(uri, env)
    }

    val inFs = {
      val env = Map("create" -> "false")
      val uri = URI.create(s"jar:file:$inputZip")
      FileSystems.newFileSystem(uri, env)
    }

    def path2id(path: String) = path.replaceAll("^/+", "")

    val rootDir = inFs.getRootDirectories.iterator.next
    val transformer = new Transformation(xslFileName, outFs, path2id)
    val visitor = new TransformVisitor(transformer)
    Files.walkFileTree(rootDir, visitor)

    outFs.close()
  }
}

class Transformation(xsl: String, fs: FileSystem, path2id: String => String) {

  val proc = new Processor(false)

  val xslt: XsltTransformer = {
    val xslSource = new StreamSource(new File(xsl))
    proc.newXsltCompiler.compile(xslSource).load
  }

  def apply(file: Path) {
    val xml = Files.newInputStream(file)
    val path = fs.getPath( path2id(file.toString) )
    println(s"converting $file to $path")
    Files.deleteIfExists(path)
    if (path.getParent != null) {
      Files.createDirectories(path.getParent)
    }
    val out = Files.newOutputStream(path)
    val dest = proc.newSerializer(out)

    xslt.setSource(new StreamSource(xml))
    xslt.setDestination(dest)

    try {
      xslt.transform()
    } catch {
      case e: Exception => println(s"Failed to transform: $e")
    }

    dest.close()
    out.close()
    xml.close()
  }
}

class TransformVisitor(trans: Transformation) extends SimpleFileVisitor[Path] {
  override def visitFile(file: Path, attrs: BasicFileAttributes): FileVisitResult = {
    if (attrs.isRegularFile) trans(file)
    FileVisitResult.CONTINUE
  }
}

