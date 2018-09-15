class: CommandLineTool
cwlVersion: v1.0

inputs:
 infile:
  type: File
  inputBinding:
   position: 1

outputs:
 outfile:
  type: stdout

baseCommand: [wc, -l]
