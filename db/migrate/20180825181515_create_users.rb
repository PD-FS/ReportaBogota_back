class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :CellPhone
      t.string :Username
      t.string :Password
      t.string :email
      t.string :FirstName
      t.string :LastName
      t.string :Avatar
      t.integer :Points

      t.timestamps
    end
  end
end
