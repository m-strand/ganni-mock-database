class CreateSizes < ActiveRecord::Migration[6.1]
  def change
    create.table do |t|
      t.string :name
      t.integer :q_in_stock
    end
  end
end
