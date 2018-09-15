cwlVersion: v1.0
class: CommandLineTool

inputs:
 first_array:
  type: string[]
  inputBinding:
   prefix: -f
   position: 2

 second_array:
  type:
   type: array
   items: string
   inputBinding:
    prefix: -s=
    separate: false
  inputBinding:
   position: 1
   prefix: B

outputs:
 output_file:
  type: File
  outputBinding:
   glob: output.txt

baseCommand: echo
stdout: output.txt
