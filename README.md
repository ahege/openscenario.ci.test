# OpenSCENARIO checker action

This action checks directories with OpenSCEANRIO files.

## Inputs
### CONF_FILE:
**Required** Configuration file for check
### BASE_DIR:
**Required**  Base directory to check
### CHECKER_JAR_FILE:
**Not Required** JAR file with the packed checker rules see [here](https://github.com/RA-Consulting-GmbH/openscenario.api.test/wiki/Continuous-Integration-Checker-Features#advanced-example-adding-customized-checker-rules)

## Outputs
Example output:
```
*******************************************
* ASAM OpenSCENARIO 1.0 CI Checker (2020) *
*******************************************
Used Parameters:
        exampleBoolean  true
        exampleDateTime 2018-02-24T10:00:00
        exampleDouble   2.0
        exampleInteger  2
        exampleString   injected
        exampleUnsignedInt      2
        exampleUnsignedShort    2
Checking '..\..\doc\examples\ciExampleCustomChecker\directoryToCheck\Catalogs\DriverCatalog.xosc'
WARNING: Major revision and minor revision are expected to be 1 and 0 (19,2)
Validation succeeded with 0 errors and 1 warnings.

Checking '..\..\doc\examples\ciExampleCustomChecker\directoryToCheck\Catalogs\RouteCatalog.xosc'
WARNING: Major revision and minor revision are expected to be 1 and 0 (19,2)
Validation succeeded with 0 errors and 1 warnings.

Checking '..\..\doc\examples\ciExampleCustomChecker\directoryToCheck\Catalogs\VehicleCatalog.xosc'
WARNING: Major revision and minor revision are expected to be 1 and 0 (19,2)
Validation succeeded with 0 errors and 1 warnings.

Checking '..\..\doc\examples\ciExampleCustomChecker\directoryToCheck\simpleImport.xosc'
WARNING: Major revision and minor revision are expected to be 1 and 0 (19,2)
Validation succeeded with 0 errors and 1 warnings.

Exit code: 1
```
See [this example](https://github.com/RA-Consulting-GmbH/openscenario.api.test/wiki/Continuous-Integration-Checker-Features#running-the-example-1)

## Configuration file
See [here](https://github.com/RA-Consulting-GmbH/openscenario.api.test/wiki/Continuous-Integration-Checker-Features#configuration-parameters)

## Example usage

```yaml
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
```
