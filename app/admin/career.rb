ActiveAdmin.register Career do

  index do
    column :job_name
    column :description
    column :how_to_apply
    default_actions
  end

  filter :email

  form do |f|
    f.inputs "create a Job" do

      f.input :job_name
      f.input :description ,  :as => :ckeditor
      f.input :how_to_apply ,  :as => :ckeditor

    end
    f.actions
  end
end
