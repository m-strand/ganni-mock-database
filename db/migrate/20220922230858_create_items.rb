class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create.table do |t| 
      t.string :name
      t.string :category_id
      t.string :color_id
      t.string :sizes
      t.string :img1URL
      t.string :img2URL
    end
  end
end
