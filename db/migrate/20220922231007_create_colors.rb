class CreateColors < ActiveRecord::Migration[6.1]
  def change
    create.table do |t|
      t.string :name
    end
  end
end
