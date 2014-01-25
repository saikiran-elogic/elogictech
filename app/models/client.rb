class Client < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :client_project, :country, :email, :name, :project_description, :project_dude_date, :project_start_date, :state, :zip
  attr_accessible :companylogo

 has_attached_file :companylogo, :styles => { :small => "150x150>" },
                  :url  => "/assets/clients/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/clients/:id/:style/:basename.:extension"

validates_attachment_presence :companylogo
validates_attachment_size :companylogo, :less_than => 5.megabytes
validates_attachment_content_type :companylogo, :content_type => ['image/jpeg', 'image/png']

end
