class: CommandLineTool
cwlVersion: v1.0

requirement:
 - class: InlineJavascriptRequirement

inputs:
 infile:
  type: File
  loadContents: true

outputs:
 outfile:
  type: File

baseCommand: printf
arguments: [-n,-e,Hello,$(inputs.infile.contents),!]




