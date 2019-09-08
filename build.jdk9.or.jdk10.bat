SET JAVA_HOME=c:\Program Files\Java\jdk-10.0.2
del *.class,*.jar,*.exe

"%JAVA_HOME%\bin\javac" FooClient.java
"%JAVA_HOME%\bin\jar" cfe fooclient.jar FooClient FooClient.class
"%JAVA_HOME%\bin\javapackager" -deploy -native installer -outdir . -srcdir . -srcfiles fooclient.jar -appclass FooClient -verbose
