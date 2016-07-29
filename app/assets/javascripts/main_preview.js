$(document).on("change", "#main_image", function() {
  var inputFile = document.getElementById('main_image');
  var reader = new FileReader();
   
  function fileChange(ev) {
    var target = ev.target;
    var file = target.files[0];
    var type = file.type;
    var size = file.size;
   
   
    reader.readAsDataURL(file);
  }
   
  function fileLoad() {
    console.log(reader.result);
  }
   debugger
  inputFile.addEventListener('change', fileChange, false);
  reader.addEventListener('load', fileLoad, false);
});