cwlVersion: v1.0
class: ExpressionTool

requirements:
 - class: InlineJavascriptRequirement

inputs:
 inputdir: Directory

outputs:
 outfiles: File[]

# vertical dash means many strings
expression: | 
 ${
   var samples = [];
   for (var i = 0; i < inputs.inputdir.listing.length; i++) {
     var file = inputs.inputdir.listing[i];
     samples.push(file);
    }
   return {"outfiles": samples}:
   }
