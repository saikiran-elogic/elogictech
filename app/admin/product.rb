ActiveAdmin.register Product do
   show do |client|
      attributes_table do
        row :name
        row :domain
        row :description 
        row :photo do
          image_tag(client.photo.url)
        end
        row :photo1 do
          image_tag(client.photo1.url)
        end
    
        row :created_at
        row :updated_at 
      end
      active_admin_comments
  end

   index do |client|
          column :name
          column :domain
          column :description
          column :photo do
            image_tag(client.photo.url)
          end
          column :photo1 do
            image_tag(client.photo1.url)
          end
         
          
      default_actions
    end

  filter :name 
  filter :domain
 
  form do |f|
    f.inputs "create a Job" do
  
        f.input :name
        f.input :domain
        f.input :description,:as => :ckeditor
        f.input :photo
        f.input :photo1
     
  
    end
    f.actions
  end
end
