ActiveAdmin.register Portfolio do
  show do |client|
      attributes_table do
        row :project_name
        row :description
        row :project_website
        row :photo1 do
          image_tag(client.photo1.url)
        end
        row :photo2 do
          image_tag(client.photo2.url)
        end
        row :photo3 do
          image_tag(client.photo2.url)
        end
        row :created_at
        row :updated_at 
      end
      active_admin_comments
  end

 index do
        column :project_name
        column :description
        column :project_website
        column :photo1
        column :photo2
        column :photo3
        
    default_actions
  end

  filter :project_name 
  filter :description

  form do |f|
    f.inputs "create a Job" do
  
        f.input :project_name
        f.input :description,:as => :ckeditor
        f.input :project_website
        f.input :photo1
        f.input :photo2
        f.input :photo3
      
  
    end
    f.actions
  end
end
