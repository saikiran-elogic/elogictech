class Partner < ActiveRecord::Base
  attr_accessible :partner_name, :website
  has_attached_file :logo, :styles => { :small => "150x150>" },
                  :url  => "/assets/partners/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/partners/:id/:style/:basename.:extension"

    validates_attachment_presence :logo
    validates_attachment_size :logo, :less_than => 5.megabytes
    validates_attachment_content_type :logo, :content_type => ['image/jpeg', 'image/png']
end
