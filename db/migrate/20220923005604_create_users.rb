class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create.table do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
    end
  end
end
