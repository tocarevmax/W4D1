class CreateUsersTable < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, null: false, unique: true
    end

    add_index :users, :username
  end
end
