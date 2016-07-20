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
  -has_many :likes

## table

-.string :nickname
-.string :pro_img <!--プロフィールイメージ -->
-.string :profile
-.string :group
-.string :works

# Prototype
---
## association

  -belongs_to :user
  -has_many :captureimages
  -has_many :comments
  -has_many :likes

## table

-.string :title
-.text :catch_copy
-.text :concept
-.integer :user_id

# CaptureImage
---
## association

  -belongs_to :prototype

## table

-.integer :type <!-- main画像かsub画像か判別-->
-.integer :prototype_id
-.text :content

# Like
---
## association

 -belongs_to :prototype
 -belongs_to :user

## table

-.integer :user_id
-.integer :prototype_id

# Comment
---
## association

  -belongs_to :prototype
  -belongs_to :user

## table

-.text :content
-.integer :user_id
-.integer :prototype_id