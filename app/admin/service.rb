ActiveAdmin.register Service do
  show do |client|
      attributes_table do
        row :name
        row :description 
        row :photo1 do
          image_tag(client.photo1.url)
        end
        row :photo2 do
          image_tag(client.photo2.url)
        end
         row :photo3 do
          image_tag(client.photo3.url)
        end
    
        row :created_at
        row :updated_at 
      end
      active_admin_comments
  end

   index do |client|
          column :name
          column :description
          column :photo1 do
            image_tag(client.photo1.url)
          end
          column :photo2 do
            image_tag(client.photo2.url)
          end
          column :photo3 do
            image_tag(client.photo3.url)
          end
          
      default_actions
    end

  filter :name 
 
  form do |f|
    f.inputs "create a Job" do
  
        f.input :name
        f.input :description,:as => :ckeditor
        f.input :photo1
        f.input :photo2
        f.input :photo3
     
  
    end
    f.actions
  end
end
