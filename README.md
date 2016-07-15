README.md

#User
---
##association

  -has_many :prototypes
  -has_many :comments

##table

-email
-encrypted-password
-username


#Prototype
---
##association

  -belongs_to :user
  -has_many :captureimages
  -has_many :comments
  -has_one :like

##table

-title
-catch_copy
-concept
-user_id

#CaptureImage
---
##association

  -belongs_to :prototype

##table

-name
-prototype_id
<!-- user_name????? -->

#Like
---
##association

<!-- わからず -->

##table

-count
-prototype_id

#Comment
---
##association

  -belongs_to :prototype

##table

-content
-user_id
-prototype_id