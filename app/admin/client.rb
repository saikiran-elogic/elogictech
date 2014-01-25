ActiveAdmin.register Client do

  show do |client|
      attributes_table do
        row :name
        row :email
        row :address1
        row :address2
        row :city
        row :state
        row :country
        row :zip
        row :client_project
        row :project_description
        
        row :companylogo do
          image_tag(client.companylogo.url)
        end

        row :created_at
        row :updated_at 
      end
      active_admin_comments
  end

 index do
        column :name
        column :email
        column :address1
        column :address2
        column :city
        column :state
        column :country
        column :zip
        column :client_project
        column :project_description
          column :companylogo do
          image_tag(client.companylogo.url)
        end
    default_actions
  end

  filter :name

  form do |f|
    f.inputs "create a Job" do
  
        f.input :name
        f.input :email
        f.input :address1
        f.input :address2
        f.input :city
        f.input :state
        f.input :country
        f.input :zip
        f.input :client_project
        f.input :project_description ,:as => :ckeditor
        
        f.input :companylogo 

    end
    f.actions
  end




end
