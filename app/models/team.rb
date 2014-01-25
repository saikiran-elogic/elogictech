class Team < ActiveRecord::Base
  attr_accessible :description, :desgination, :email, :facebook_url, :github_id, :name, :personal_website
  attr_accessible :photo,:photo1,:photo2



 has_attached_file :photo1, :styles => { :small => "150x150>" },
                  :url  => "/assets/teams/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/teams/:id/:style/:basename.:extension"

validates_attachment_size :photo1, :less_than => 10.megabytes
validates_attachment_content_type :photo1, :content_type => ['image/jpeg', 'image/png']



 has_attached_file :photo2, :styles => { :small => "150x150>" },
                  :url  => "/assets/teams/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/teams/:id/:style/:basename.:extension"

validates_attachment_size :photo2, :less_than => 10.megabytes
validates_attachment_content_type :photo2, :content_type => ['image/jpeg', 'image/png']


 has_attached_file :photo, :styles => { :small => "150x150>" },
                  :url  => "/assets/teams/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/teams/:id/:style/:basename.:extension"

validates_attachment_presence :photo
validates_attachment_size :photo, :less_than => 10.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end
