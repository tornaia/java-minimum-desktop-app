SET JAVA_HOME=c:\Program Files\Java\jdk-14
del *.class,*.jar,*.exe

"%JAVA_HOME%\bin\javac" FooClient.java
"%JAVA_HOME%\bin\jar" cfe fooclient.jar FooClient FooClient.class
"%JAVA_HOME%\bin\jpackage" --package-type exe --input . --main-jar fooclient.jar --main-class FooClient --output . --verbose