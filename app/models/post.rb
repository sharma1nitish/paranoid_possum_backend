class Post < ApplicationRecord
  validates :title, presence: true
  validates :subtitle, presence: true
  validates :write_up, presence: true
  validates :image, presence: true
  validates :audio, presence: true

  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags
end
