class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :capture_images, dependent: :destroy
  accepts_nested_attributes_for :capture_images, reject_if: :subimage

  validates :title, presence: true
  validates :concept, presence: true
  validates :catch_copy, presence: true

  def subimage(attributed)
    attributed['content'].blank? if attributed.has_value?('sub')
  end
end
