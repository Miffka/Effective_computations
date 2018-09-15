class: Workflow
cwlVersion: v1.0

requirements:
 - class: ScatterFeatureRequirement

inputs:
 input_dir: Directory

outputs:
 outdir: 
  type: File[]
  outputSource: cat/outfile

steps:
 get:
  run: get.cwl
  in:
   inputdir: input_dir
  out:
   [outfiles]
 
 cat:
  scatter: infile
  run: cat.cwl
  in:
   infile: get/outfiles
  out:
   [outfile]
