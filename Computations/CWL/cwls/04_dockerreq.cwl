cwlVersion: v1.0
class: CommandLineTool

hints:
 - class: DockerRequirement
   dockerPull: java:8

requirements:
 - class: DockerRequirement
   dockerImageId: super-image
   dockerFile:
    $import: super.dockerfile

 - class: DockerRequirement
   dockerImageId: super-image
   dockerFile: |
    FROM ubuntu:14.04
    RUN apt-get update
