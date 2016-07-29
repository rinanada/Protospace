class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :capture_images, dependent: :destroy
  accepts_nested_attributes_for :capture_images, reject_if: :subimage
  validates :title, :concept, :catch_copy, presence: true
  has_one :main_image, -> {where type: 0}, class_name: "CaptureImage"
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  def subimage(attributed)
    attributed['content'].blank? if attributed.has_value?('sub')
  end

  # def main_img
  #   capture_images.main[0].content
  # end
  scope :with_proto, -> { includes(:user, :capture_images)}


end
