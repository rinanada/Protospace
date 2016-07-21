class CaptureImage < ActiveRecord::Base

  enum type: { main: 0, sub: 1 }
  self.inheritance_column = :_type_disabled
  belongs_to :prototype
  mount_uploader :content, ImageUploader


end
