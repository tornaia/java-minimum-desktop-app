SET JAVA_HOME=c:\Program Files\Java\jdk-13
del *.class,*.jar,*.exe

"%JAVA_HOME%\bin\javac" FooClient.java
"%JAVA_HOME%\bin\jar" cfe fooclient.jar FooClient FooClient.class
"%JAVA_HOME%\bin\jpackage" create-installer exe --input . --files fooclient.jar --main-jar fooclient.jar --class FooClient --output . --verbose
