cwlVersion: v1.0
class: ExpressionTool

requirements:
 - class: InlineJavascriptRequirement

inputs:
 infile:
  type: File
  inputBinding:
   position: 1
   loadContents: true

outputs:
 string_list: string[]

expression: |
 ${
  var myArray = inputs.infile.contents.trim().split("");
  var uniqueArray = new Array();

  myArray.forEach(function(value) {
   if (uniqueArray.indexOf(value) === -1) {
    uniqueArray.push(value);
   }
  })
  
  function elementsCount(array, element){
   var count = 0;
   array.forEach(function(value) {
    if (value==element) {
     count++
    }
   })
   return count
  }

  var ansArray = new Array();

  uniqueArray.forEach(function(value) {
   ansArray.push(value+": "+elementsCount(myArray, value))
   });
  
  ansArray.sort(function(a, b) {
   return a.localeCompare(b);
  });

  return {"string_list": ansArray};
 }
