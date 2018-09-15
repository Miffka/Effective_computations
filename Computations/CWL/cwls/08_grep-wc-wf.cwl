class: Workflow
cwlVersion: v1.0

inputs:
 pattern: string
 in_file: File

outputs:
 out_file:
  type: File
  outputSource: count/outfile

steps:
 grep:
  run: 08_grep.cwl
  in:
   pattern: pattern
   infile: in_file
  out:
   [outfile]

 count:
  run: 08_wc.cwl
  in:
   infile: grep/outfile
  out:
   [outfile]
