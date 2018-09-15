class: CommandLineTool
cwlVersion: v1.0

requirements:
 - class: InlineJavascriptRequirement

inputs:
 infile:
  type: File
  inputBinding:
   loadContents: true
   valueFrom: ''

outputs:
 outfile:
  type: File
  outputBinding:
   glob: $(inputs.infile.basename)

baseCommand: printf
arguments: ["Hello $(inputs.infile.contents.trim())!"]
stdout: $(inputs.infile.basename)


