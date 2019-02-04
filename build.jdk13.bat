SET JAVA_HOME=c:\Program Files\Java\jdk-13\
del *.class,*.jar,*.exe

"c:\Program Files\Java\jdk-13\bin\javac" FooClient.java
"c:\Program Files\Java\jdk-13\bin\jar" cfe fooclient.jar FooClient FooClient.class
"c:\Program Files\Java\jdk-13\bin\jpackage" -deploy -native installer -outdir . -srcdir . -srcfiles fooclient.jar -appclass FooClient -verbose

"c:\Program Files\Java\jdk-13\bin\jpackage" create-installer exe --input . --files fooclient.jar --main-jar fooclient.jar --class FooClient --output . --verbose