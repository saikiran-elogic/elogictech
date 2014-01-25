ActiveAdmin.register Casestudy do
   index do
    column :name
    column :description
    column :pdf
    default_actions
  end

  filter :name

  form do |f|
    f.inputs "create a Job" do

      f.input :name
      f.input :description ,  :as => :ckeditor
      f.input :pdf 

    end
    f.actions
  end
end
