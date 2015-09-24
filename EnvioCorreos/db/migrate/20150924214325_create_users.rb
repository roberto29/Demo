class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :password
      t.string :confird_password

      t.timestamps null: false
    end
  end
end
