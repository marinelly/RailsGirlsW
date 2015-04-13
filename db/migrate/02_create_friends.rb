class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
      t.string :lastname
      t.string :description
      t.integer :telephone

      t.timestamps
    end
  end
end
