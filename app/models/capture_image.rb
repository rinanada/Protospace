class CaptureImage < ActiveRecord::Base

  enum type: { main: 0, sub: 1 }
  self.inheritance_column = :_type_disabled
  belongs_to :prototype
  mount_uploader :content, PrototypeImageUploader
  validates :content, presence: true, if: :mainimage

  def mainimage
    self.type == "main"
  end
end