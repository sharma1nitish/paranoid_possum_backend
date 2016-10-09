class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subtitle
      t.text :write_up
      t.string :image
      t.string :audio

      t.timestamps
    end
  end
end
