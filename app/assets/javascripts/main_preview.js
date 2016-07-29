$(function() {
  document.getElementById( "main_image" ).addEventListener( "change", function() {
    // フォームで選択された全ファイルを取得
    var fileList = this.files ;

      // Blob URLの作成
    var blobUrl = window.URL.createObjectURL( fileList[0] ) ;

      // HTMLに書き出し (src属性にblob URLを指定)
    document.getElementById("output_image").innerHTML += '<img src="' + blobUrl + '">' ;
  } ) ;




  document.getElementById( "sub_image1" ).addEventListener( "change", function() {
    // フォームで選択された全ファイルを取得
    var fileList = this.files ;

      // Blob URLの作成
    var blobUrl = window.URL.createObjectURL( fileList[0]);
    debugger

      // HTMLに書き出し (src属性にblob URLを指定)
    document.getElementsByClassName("sub_output_image")[0].innerHTML += '<img src="' + blobUrl + '">' ;
    debugger
  });




  document.getElementById( "sub_image2" ).addEventListener( "change", function() {
    // フォームで選択された全ファイルを取得
    var fileList = this.files ;

      // Blob URLの作成
    var blobUrl = window.URL.createObjectURL( fileList[0] ) ;
    debugger

      // HTMLに書き出し (src属性にblob URLを指定)
    document.getElementsByClassName("sub_output_image")[1].innerHTML += '<img src="' + blobUrl + '">' ;
  });





  // document.getElementById( "form img" ).addEventListener( "change", function() {
  //   // フォームで選択された全ファイルを取得
  //   var fileList = this.files ;

  //     // Blob URLの作成
  //   var blobUrl = window.URL.createObjectURL( fileList[0] ) ;

  //     // HTMLに書き出し (src属性にblob URLを指定)
  //   document.getElementById("output_image").innerHTML += '<img src="' + blobUrl + '">' ;
  // } ) ;


});
