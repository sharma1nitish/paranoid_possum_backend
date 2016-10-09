class PostSerializer < BaseSerializer
  attributes :title, :subtitle, :write_up, :image, :audio, :tags

  def tags
    object.tags.pluck(:name).sort
  end
end
