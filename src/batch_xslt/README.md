To build the program, run the following command.

    sbt assembly

This create a self-contained, executable jar file.

    target/scala-2.11/batch-xslt-assembly-1.0.jar

To run the program in the jar file, use a command like this:

    find /some/path -name "*.xml" |
        java -jar target/scala-2.11/batch-xslt-assembly-1.0.jar myxsl.xsl myoutput.zip

This command iterates over a set of XML file in the `/some/path` directory.
Each of the XML files is transformed by the `myxsl.xsl` stylesheet.
Transformed XML files are stored on the `myoutput.zip` file.

