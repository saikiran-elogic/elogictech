class Service < ActiveRecord::Base
  attr_accessible :description, :name
  attr_accessible :photo1,:photo2,:photo3
  



 has_attached_file :photo1, :styles => { :small => "150x150>" },
                  :url  => "/assets/services/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/services/:id/:style/:basename.:extension"

validates_attachment_presence :photo1
validates_attachment_size :photo1, :less_than => 10.megabytes
validates_attachment_content_type :photo1, :content_type => ['image/jpeg', 'image/png']



 has_attached_file :photo2, :styles => { :small => "150x150>" },
                  :url  => "/assets/services/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/services/:id/:style/:basename.:extension"

validates_attachment_presence :photo2
validates_attachment_size :photo2, :less_than => 10.megabytes
validates_attachment_content_type :photo2, :content_type => ['image/jpeg', 'image/png']


 has_attached_file :photo3, :styles => { :small => "150x150>" },
                  :url  => "/assets/services/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/services/:id/:style/:basename.:extension"

validates_attachment_presence :photo3
validates_attachment_size :photo3, :less_than => 10.megabytes
validates_attachment_content_type :photo3, :content_type => ['image/jpeg', 'image/png']

end
