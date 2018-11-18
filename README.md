### Java Minimum Desktop App

To demonstrate how easy is to build a desktop application with Java.

##### Prerequisites for development

* Windows x64
* Oracle JDK 10.0.2 (http://www.oracle.com/technetwork/java/javase/downloads/jdk10-downloads-4416644.html)
* Maven 3.6.0 (https://maven.apache.org/download.cgi)
* Inno Setup 5.6.1 (u) (http://www.jrsoftware.org/isdl.php)
* IntelliJ IDEA Ultimate 2018.2.6 (https://www.jetbrains.com/idea/download/#section=windows)

##### Hints

For a smooth building experience, it is recommended that you follow these rules on where and how to check out the source code.
* Do not check out the source code in a path which contains spaces or special characters. Chances are the build will not work. This is most likely to be an issue on Windows systems.
* Do not check out the source code in a path which has a very long name or is nested many levels deep. Chances are you will hit an OS limitation during the build.

##### How to build

1. javac FooClient.java
2. jar cfe fooclient.jar FooClient FooClient.class
3. javapackager -deploy -native installer -outdir . -srcdir . -srcfiles fooclient.jar -appclass FooClient -verbose

The javapackager will create the installer exe for a self-contained application. It consists of a single, installable bundle that contains the application and a copy of the JRE needed to run the application. When the application is installed, it behaves the in the same way as any native application.

##### More to read

* https://docs.oracle.com/javase/tutorial/deployment/selfContainedApps/index.html
* https://docs.oracle.com/javase/10/tools/javapackager.htm#JSWOR719
* https://andrastornai.com/