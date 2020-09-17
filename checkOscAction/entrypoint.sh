#!/bin/sh -l
sh -c "echo Hello world my name is $CHECK_FOLDER"
java -jar /net.asam.openscenario.v1_0.reader-0.9.0-jar-with-dependencies.jar -d $GITHUB_WORKSPACE/$CHECK_FOLDER