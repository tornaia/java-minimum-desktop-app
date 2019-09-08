SET JAVA_HOME=c:\Program Files\Java\jdk-10.0.2\
del *.class,*.jar,*.exe

"c:\Program Files\Java\jdk-10.0.2\bin\javac" FooClient.java
"c:\Program Files\Java\jdk-10.0.2\bin\jar" cfe fooclient.jar FooClient FooClient.class
"c:\Program Files\Java\jdk-10.0.2\bin\javapackager" -deploy -native installer -outdir . -srcdir . -srcfiles fooclient.jar -appclass FooClient -verbose
