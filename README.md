<!-- #モデル名

##アソシエーション
 -アソシエーションの記述
 -アソシエーションの記述

##テーブル名

-.型 :カラム名
-.型 :カラム名
 -->

# User
---
## association

  -has_many :prototypes
  -has_many :comments

## table

-.string :password
-.string :nickname
-.text :pro_img <!--プロフィールイメージ -->

# Prototype
---
## association

  -belongs_to :user
  -has_many :captureimages
  -has_many :comments
  -has_many :likes

## table

-.text :title
-.text :catch_copy
-.text :concept
-.integer :user_id

# CaptureImage
---
## association

  -belongs_to :prototype

## table

-.string :type <!-- main画像かsub画像か判別-->
-.integer :prototype_id

# Like
---
## association

 -belongs_to :prototype

## table

-.integer :user_id
-.integer :prototype_id

# Comment
---
## association

  -belongs_to :prototype

## table

-.text :content
-.integer :user_id
-.integer :prototype_id