class User < ActiveRecord::Base
  attr_accessible :contact_number, :email, :name
end
