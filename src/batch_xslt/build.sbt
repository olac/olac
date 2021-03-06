lazy val root = (project in file(".")).settings(
  name := "batch-xslt",
  version := "1.1",
  scalaVersion := "2.11.7",
  libraryDependencies += "net.sf.saxon" % "Saxon-HE" % "9.7.0-1"
).enablePlugins(JavaAppPackaging)
