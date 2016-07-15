<!-- #モデル名

##アソシエーション
 -アソシエーションの記述
 -アソシエーションの記述

##テーブル名

-.型 :カラム名
-.型 :カラム名
 -->

#User
---
##association

  -has_many :prototypes
  -has_many :comments

##table

-.string :email
-.string :encrypted-password
-.string :username


#Prototype
---
##association

  -belongs_to :user
  -has_many :captureimages
  -has_many :comments
  -has_one :like

##table

-.text :title
-.text :catch_copy
-.text :concept
-.integer :user_id

#CaptureImage
---
##association

  -belongs_to :prototype

##table

-.string :name
-.integer :prototype_id
<!-- user_name????? -->

#Like
---
##association

<!-- わからず -->

##table

-.integer :count
-.integer :prototype_id

#Comment
---
##association

  -belongs_to :prototype

##table

-.text :content
-.integer :user_id
-.integer :prototype_id