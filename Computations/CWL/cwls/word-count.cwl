cwlVersion: v1.0
class: CommandLineTool

requirements:
 - class: ShellCommandRequirement

inputs:
 input_file:
  type: File

outputs:
 output_file:
  type: File
  outputBinding:
   glob: output/output

stdout: output/output

baseCommand: []

arguments:
 - wc
 - -w
 - <
 - $(inputs.input_file)
