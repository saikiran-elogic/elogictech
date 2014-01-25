ActiveAdmin.register Team do
   show do |client|
      attributes_table do
        row :name
        row :desgination
        row :email  
        row :facebook_url
        row :github_id
        row :personal_website
        row :description

        row :photo do
          image_tag(client.photo.url)
        end
        row :photo1 do
          image_tag(client.photo1.url)
        end
        row :photo2 do
          image_tag(client.photo2.url)
        end
     
    
        row :created_at
        row :updated_at 
      end
      active_admin_comments
  end

   index do |client|
          column :name
          column :desgination
          column :email
          column :facebook_url
          column :github_id
          column :personal_website
          column :description

          column :photo do
            image_tag(client.photo.url)
          end
          column :photo1 do
            image_tag(client.photo1.url)
          end
          column :photo2 do
            image_tag(client.photo2.url)
          end
      
          
      default_actions
    end

  filter :name 
 
  form do |f|
    f.inputs "create a Job" do
  
        f.input :name
        f.input  :desgination
        f.input  :email
        f.input  :facebook_url
        f.input  :github_id
        f.input  :personal_website
        f.input :description,:as => :ckeditor
        f.input :photo
        f.input :photo1
        f.input :photo2
     
  
    end
    f.actions
  end  
end
