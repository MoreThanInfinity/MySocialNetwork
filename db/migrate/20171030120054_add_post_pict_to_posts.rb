class AddPostPictToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :post_pict, :string
  end
end
