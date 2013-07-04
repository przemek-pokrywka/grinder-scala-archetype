grinder-scala-archetype
=======================

maven archetype for the grinder.

it creates project with following structure

```
     ---------------------------
    |  Maven project directory  |
     ---------------------------
                  |
                  |    -----
                  |---| src |
                       -----
                         |
                         |    ----------
                         |---| assembly |
                         |    ----------
                         |      |
                         |      |    ---------
                         |      |---| scripts |
                         |           ---------
                         |              |
                         |              |    ---------
                         |              |---| windows |
                         |              |    ---------
                         |              |        |
                         |              |        |--- setup-classpath.cmd
                         |              |        |
                         |              |        |--- startAgent.cmd
                         |              |        |                                                
                         |              |        |--- startConsole.cmd
                         |              |
                         |              |    ------
                         |              |---| unix |
                         |              |    ------
                         |              |       |
                         |              |       |--- setup-classpath.sh
                         |              |       |
                         |              |       |--- startAgent.sh
                         |              |
                         |              |--- assembly.xml
                         |
                         |
                         |
                         |    ------
                         |---| main |
                              ------
                                 |
                                 |    -----------
                                 |---| resources |
                                      -----------
                                         |
                                         |--- grinder.properties
                                         |
                                         |--- sample.scala
                                 
```

###Commands available in project created from this archetype

When project is created from this archetype you can start Console by

```
mvn -P Console exec:java 
```

to start Agent use

```
mvn -P Agent exec:exec 
```

to create zip package with all dependecies and scripts ready to deploy on remote servers use

```
mvn assembly:assembly 
```
