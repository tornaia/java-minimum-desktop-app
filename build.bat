del *.class,*.jar,*.exe

javac FooClient.java
jar cfe fooclient.jar FooClient FooClient.class
javapackager -deploy -native installer -outdir . -srcdir . -srcfiles fooclient.jar -appclass FooClient -verbose