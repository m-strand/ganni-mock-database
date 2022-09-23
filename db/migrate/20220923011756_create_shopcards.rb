class CreateShopcards < ActiveRecord::Migration[6.1]
  def change
    create.table do |t|
      t.string :section
      t.string :img1URL
      t.string :img2URL
      t.string :title1
      t.string :title2
      t.int :categories
    end
  end
end
