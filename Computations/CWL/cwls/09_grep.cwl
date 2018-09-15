class: CommandLineTool
cwlVersion: v1.0

inputs:
 pattern:
  type: string
  inputBinding:
   position: 1
 infile:
  type: File
  inputBinding:
   position: 2

outputs:
 outfile:
  type: stdout

baseCommand: grep
