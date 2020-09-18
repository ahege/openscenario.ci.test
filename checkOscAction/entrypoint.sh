#!/bin/sh -l
export CLASSPATH=/net.asam.openscenario.v1_0.reader-0.9.0-jar-with-dependencies.jar
sh -c "echo $CLASSPATH"
java net.asam.openscenario.v1_0.main.OpenScenarioCiChecker  -conf $GITHUB_WORKSPACE/$INPUT_CONF_FILE -d $GITHUB_WORKSPACE/$INPUT_BASE_DIR