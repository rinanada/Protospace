class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :prototypes
  has_many :comments
  has_many :likes
  mount_uploader :pro_img, ProImgUploader
  validates :nickname, :password, :email, presence: true

  def main_img
    capture_images.main[0].content
  end

end
