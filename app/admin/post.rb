ActiveAdmin.register Post do

  permit_params :title, :subtitle, :write_up, :image, :audio, tags_attributes: [:id, :_destroy, :name]

  filter :title
  filter :tags

  index do
    selectable_column
    id_column
    column :title
    column :subtitle
    column :write_up
    column :image
    column :audio
    actions
  end

  show do
    attributes_table do
      row :title
      row :subtitle
      row :write_up
      row :image
      row :audio
      row('Tags') { |post| post.tags.pluck(:name).join(', ') }
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :subtitle
      f.input :write_up
      f.input :image
      f.input :audio

      f.has_many :tags do |t|
        t.input :name
      end
    end


    f.actions
  end
end

