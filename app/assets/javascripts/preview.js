$(document).on('turbolinks:load', function(){

  $("#prototype_capture_images_attributes_0_content").on("change", function() {

    var fileList = this.files[0] ;
// [FileReader]クラスを起動
    var fileReader = new FileReader() ;

    // 読み込み後の処理を決めておく
    fileReader.onload = function() {
      // データURIを取得
      var dataUrl = this.result ;
      debugger

      // HTMLに書き出し (src属性にデータURIを指定)
      document.getElementById("output_image").innerHTML += '<img src="' + dataUrl + '">' ;

    };

    // ファイルをデータURIとして読み込む
    fileReader.readAsDataURL(fileList);


  });

});
  // $("").on("change", function() {
  //   var sub_image_files = this.files;
  //   var output_id = "sub_output_image1";
  //   upload(sub_image_files, output_id);
  // });

  // $("#sub_image2").on("change", function() {
  //   var sub_image_files = this.files;
  //   var output_id = "sub_output_image2";
  //   upload(sub_image_files, output_id);
  // });


  // $("#sub_image3").on("change", function() {
  //   var sub_image_files = this.files;
  //   var output_id = "sub_output_image3";
  //   upload(sub_image_files, output_id);
  // });

  // $("#user_image").on("change", function() {
  //   var user_image_files = this.files;
  //   var output_id = "output_user_image";
  //   upload(user_image_files, output_id);
  // });

  // $("#main_image").on("change", function() {
  //   // フォームで選択された全ファイルを取得
  //   var fileList = this.files ;

  //     // Blob URLの作成
  //   var blobUrl = window.URL.createObjectURL( fileList[0] ) ;

  //     // HTMLに書き出し (src属性にblob URLを指定)
  //   document.getElementById("output_image").innerHTML += '<img src="' + blobUrl + '">' ;
  // } ) ;

  // $(".sub_image1").on("change", function() {

  // });
  // document.getElementById( "sub_image1" ).addEventListener( "change", function() {
  //   // フォームで選択された全ファイルを取得
  //   var fileList = this.files ;

  //     // Blob URLの作成
  //   var blobUrl = window.URL.createObjectURL( fileList[0]);
  //   debugger

  //     // HTMLに書き出し (src属性にblob URLを指定)
  //   document.getElementById("sub_output_image").innerHTML += '<img src="' + blobUrl + '">' ;
  //   debugger
  // });




  // document.getElementById( "sub_image2" ).addEventListener( "change", function() {
  //   // フォームで選択された全ファイルを取得
  //   var fileList = this.files ;

  //     // Blob URLの作成
  //   var blobUrl = window.URL.createObjectURL( fileList[0] ) ;
  //   debugger

  //     // HTMLに書き出し (src属性にblob URLを指定)
  //   document.getElementsByClassName("sub_output_image")[1].innerHTML += '<img src="' + blobUrl + '">' ;
  // });



  // document.getElementById( "form img" ).addEventListener( "change", function() {
  //   // フォームで選択された全ファイルを取得
  //   var fileList = this.files ;

  //     // Blob URLの作成
  //   var blobUrl = window.URL.createObjectURL( fileList[0] ) ;

  //     // HTMLに書き出し (src属性にblob URLを指定)
  //   document.getElementById("output_image").innerHTML += '<img src="' + blobUrl + '">' ;
  // } ) ;

