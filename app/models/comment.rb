class Comment < ActiveRecord::
  belongs_to :prototype
  belongs_to :user

  
end
