
// Fileオブジェクトを内包するモデル
var FileModel = Backbone.Model.extend({
 
  defaults: {
    file: '',
    dataURL: ''
  },
 
  initialize: function(attr) {
    var self = this;
 
    // FileReaderを準備しておく
    self.reader = new FileReader();
    self._eventify();
  },
 
  _eventify: function() {
    var self = this;
 
    // ファイルの読み込みが完了したらdataURLに値をセット
    // その後、readerLoadイベントを発行する
    self.reader.addEventListener('load', function() {
      self.set('dataURL', self.reader.result);
      self.trigger('readerLoad', self);
    }, false);
  },
 
  // ファイルを読み込むメソッド
  readFile: function() {
    var self = this;
    var reader = self.reader;
 
    reader.readAsDataURL(this.get('file'));
  }
 
});

// -----------------------------------------------------------

var FileCollection = Backbone.Collection.extend({
 
  model: FileModel,
 
  // それぞれのModelのreadFileコールする
  readFiles: function() {
    var self = this;
 
    this.each(function(file) {
      file.readFile();
    });
  }
 
});