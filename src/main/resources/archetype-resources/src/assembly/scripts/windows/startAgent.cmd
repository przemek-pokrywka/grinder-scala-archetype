call setup-classpath.cmd
echo %CLASSPATH%
java -classpath %GRINDER_CLASS_PATH% net.grinder.Grinder %GRINDER_PROPERTIES%