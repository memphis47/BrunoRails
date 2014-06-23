class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :pswd
      t.string :auth

      t.timestamps
    end
  end
end
