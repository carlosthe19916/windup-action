# RHAMT/Windup Analysis
A Github Action that will execute a [RHAMT](https://developers.redhat.com/products/rhamt/overview) analysis to your repository.

> Red Hat Application Migration Toolkit is an assembly of open source tools that enables large-scale application migrations and modernizations. The tooling consists of multiple individual components that provide support for each phase of a migration process. The migrations supported include application platform upgrades, migrations to a cloud-native deployment environment, and also migrations from several commercial products to the Red Hat JBoss Enterprise Application Platform.

## Usage

To integrate RHAMT with your Actions pipeline, specify the name of this repository with a tag number as a `step` within your `ẁorkflow.yml` file.

inside your `.github/workflows/workflow.yml` file:

```yaml
steps:
- uses: actions/checkout@master
- uses: carlosthe19916/windup-action@v2
  id: rhamt
  with:
    target: eap7
    input: myInput #(Optional) Default value $GITHUB_WORKSPACE
    output: myOutput #(Optional) Default value ${GITHUB_WORKSPACE}.report
    sourceMode: true #(Optional) Default value is true
```

## Arguments
RHAMT's Action accepts 4 different arguments:


| Input        | Description           | Usage  |
| ------------- |:-------------:| -----:|
| target      | The target technology for the application migration. See the --target argument description. | Required |
| input      | A space-delimited list of the path to the file or directory containing one or more applications to be analyzed. This argument is required.      |   Optional |
| output | Specify the path to the directory to output the report information generated by RHAMT.      |    Optional |
| sourceMode | Flag to indicate that the application to be evaluated contains source files rather than compiled binaries. See the Input File Argument Tables for details | Optional (default true)|
| additional-command-line-arguments | Additional RHAMT Command-line Arguments. | Optional |

## Output
RHAMT's Action has only one `output`:
- `report`: The filename that includes the result of the RHAMT analysis.

## Example `workflow.yml` with RHAMT Action
```yaml
name: Example workflow for RHAMT
on: [push]
jobs:
  run:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - uses: carlosthe19916/windup-action@v2
      id: rhamt
      with:
        target: eap7
```
