ActiveAdmin.register Review do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

  index do
    selectable_column
    id_column
    column :email
    column :created_at
    column :updated_at    
    column :user 
    actions
  end

  form do |f|
    f.inputs "Review Details" do
      f.input :email
      f.input :user_id
      f.input :created_at, as: :datepicker, datepicker_options: { min_date: "2013-10-8",        max_date: "+3D" }
    end
    f.actions
  end

  permit_params :email, :name, :user_id, :created_at
end
