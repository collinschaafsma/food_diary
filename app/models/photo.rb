class Photo < ActiveRecord::Base
  has_attached_file :image, :styles => {:small_thumb => "50x50", :medium_thumb => "190x150"}
  validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 40.megabytes
  validates_attachment_content_type :image, :content_type => [ 'image/jpeg', 'image/png', 'image/gif', 'image/x-png', 'image/pjpeg' ]
  attr_accessible :image, :image_file_name, :image_content_type, :image_file_size
end
