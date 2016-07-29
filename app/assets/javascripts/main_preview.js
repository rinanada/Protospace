$(document).on("change", "#prototype_capture_images_attributes_0_content", function() {

    var file = this.files;

    // 画像ファイル以外は処理を中止
    if (!file[0].type.match(/^image\/(png|jpeg|gif)$/)) return;

    var img    = new Image();          // 表示用のイメージオブジェクトを取得
    var reader = new FileReader();  // ファイルリーダー作成

    // 画像がロードされてから処理を行う
    reader.onload = function (e) {

        // readAsDataURLをsrcに指定してイメージを作成
        $("#prototype_capture_images_attributes_0_content").append("<img src='"+e.target.result+"' alt='canvas' />");

    }

    // readAsDataURLメソッドでファイルの内容を取得
    reader.readAsDataURL(file[0]);   

});