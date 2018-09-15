cwlVersion: v1.0
class: CommandLineTool

inputs:
 paramA:
  type: string[]?
  inputBinding:
   prefix: -A
   position: 3

 paramB:
  type:
   type: array
   items: string
   inputBinding:
    prefix: B=
    separate: false
  inputBinding:
   prefix: -s
   position: 1

 paramC:
  type: string[]
  inputBinding:
   prefix: C=
   itemSeparator: "+"
   separate: false
   position: 2

 paramD:
  type:
   type: array
   items: string
   inputBinding:
    prefix: --D=
    separate: false
  inputBinding:
   position: 4

outputs:
 output_file:
  type: File
  outputBinding:
   glob: output.txt

baseCommand: echo
stdout: output.txt
