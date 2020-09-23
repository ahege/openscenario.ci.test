#OpenSCENARIO checker action

This action checks directories with OpenSCEANRIO files.

## Inputs
### CONF_FILE:
**Required** Configuration file for check
### BASE_DIR:
**Required**  Base directory to check
### CHECKER_JAR_FILE:
** Not Required** "JAR file with the checker rules"

## Outputs

### `time`

The time we greeted you.

## Example usage

´´´yaml
name: OpenSCENARIO Checker CI

on:
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]

jobs:
  build:
    name: Checker Job
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: OpenSCENARIO checker action
      uses: ahege/openscenario.ci.test@v2
      with:
        CONF_FILE: conf/conf.yml
        BASE_DIR: targetFolder
        CHECKER_JAR_FILE: conf/net.asam.openscenario.checker.example-0.9.0.jar
´´´
