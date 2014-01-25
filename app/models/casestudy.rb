class Casestudy < ActiveRecord::Base
  attr_accessible :description, :name ,:pdf

  has_attached_file :pdf,
                  :url  => "/assets/casestudies/:id/:basename.:extension",
                  :path => ":rails_root/public/assets/casestudies/:id/:basename.:extension"

validates_attachment_presence :pdf
validates_attachment_size :pdf, :less_than => 50.megabytes
end
