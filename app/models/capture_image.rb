class CaptureImage < ActiveRecord::Base

  enum type: { main: 0, sub: 1 }

  belongs_to :prototype
end