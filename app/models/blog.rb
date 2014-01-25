class Blog < ActiveRecord::Base
  attr_accessible :content, :name ,:photo
  has_attached_file :photo, :styles => { :small => "150x150>" },
                  :url  => "/assets/blogs/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/blogs/:id/:style/:basename.:extension"

validates_attachment_presence :photo
validates_attachment_size :photo, :less_than => 5.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end
