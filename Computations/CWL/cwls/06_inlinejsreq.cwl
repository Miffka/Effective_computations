cwlVersion: v1.0
class: CommandLineTool
baseCommand: echo

requirements:
 - class: InlineJavascriptRequirement

inputs: []
outputs: []
arguments:
 - prefix: -A
   valueFrom: $(1+1)
 - prefix: -B
   valueFrom: $("/foo/bar/baz".split('/').slice(-1)[0])
