class: Workflow
cwlVersion: v1.0

requirements:
 - class: ScatterFeatureRequirement

inputs:
 pattern: string
 in_files: File[]

outputs:
 out_file:
  type: File
  outputSource: count/outfile

steps:
 grep:
  scatter: infile
  run: 09_grep.cwl
  in:
   pattern: pattern
   infile: in_files
  out:
   [outfile]

 count:
  run: 09_wc.cwl
  in:
   infiles: grep/outfile
  out:
   [outfile]
