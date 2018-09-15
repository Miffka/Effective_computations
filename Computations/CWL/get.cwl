cwlVersion: v1.0
class: ExpressionTool

requirements:
 - class: InlineJavascriptRequirement

inputs:
 inputdir: Directory

outputs:
 outfiles: 
  type: File[]

# vertical dash means many strings
expression: | 
 ${
   var samples = [];
   var re = /^\w/;
   for (var i = 0; i < inputs.inputdir.listing.length; i++) {
     var file = inputs.inputdir.listing[i];
     if (re.test(file.basename)) {
      samples.push(file);
     }
    }
   return {"outfiles": samples}
   }
