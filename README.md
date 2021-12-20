# Reproducibility Engineering Lab Session 10
This repository provides a setup for creating a Docker meta-container that is able to generate Dockerfiles given project-specific Artefacts. The Dockerfiles are built using Ubuntu 20.04

## Adding a Project
Projects need to be added as a subdirectory in [project](project/). Two files can be provided in the subdirectory: 
* `packages` provides a list of packages that should be installed in the container.
* `Dockerfile-append` contains Dockerfile instructions that are appended to the generic Dockerfile.

The actual project files need to be added in `project/{project_name}/files`  
