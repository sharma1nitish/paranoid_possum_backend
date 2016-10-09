class PostSerializer < BaseSerializer
  attributes :title, :subtitle, :write_up, :image, :audio

  has_many :tags
end
