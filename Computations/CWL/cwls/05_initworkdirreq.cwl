cwlVersion: v1.0
class: CommandLineTool

requirements:
 - class: InitialWorkDirRequirement
   listing: [$(inputs.input_file1), $(inputs.input_file2)]

requirements:
 - class: InitialWorkDirRequirement
   listing:
    - $(inputs.input_file1)
    - $(inputs.input_file2)

