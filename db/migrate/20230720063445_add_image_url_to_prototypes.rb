class AddImageUrlToPrototypes < ActiveRecord::Migration[6.0]
  def change
    add_column :prototypes, :image_url, :string
  end
end
