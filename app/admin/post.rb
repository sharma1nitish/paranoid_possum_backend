ActiveAdmin.register Post do

  permit_params :title, :subtitle, :write_up, :image, :audio, tags_attributes: [:id, :_destroy, :name]

  filter :title
  filter :tags

  index do
    selectable_column
    id_column
    column :title
    column :subtitle
    column('Image') { |post| link_to post.image, post.image }
    column('Audio') { |post| link_to post.audio, post.audio }
    actions
  end

  show do
    attributes_table do
      row :title
      row :subtitle
      row :write_up
      row('Image') { |post| link_to post.image, post.image }
      row('Audio') { |post| link_to post.audio, post.audio }
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

