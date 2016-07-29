var inputFile = document.getElementById('prototype_capture_images_attributes_0_content');
 
function fileChange(ev) {
  var target = ev.target;
  var files = target.files;
 
  console.log(files);
}
 
inputFile.addEventListener('change', fileChange, false);
