ActiveAdmin.register Blog do
index do
    column :name
    column :content do 
      content.html_safe
    end

    default_actions
  end

 show do

 end
 
  filter :email

  form do |f|
    f.inputs "create a POST " do

      f.input :name
      f.input :content ,  :as => :ckeditor
      f.input :photo
    end
    f.actions
  end
end
