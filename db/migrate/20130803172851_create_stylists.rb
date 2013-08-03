class CreateStylists < ActiveRecord::Migration
  def change
    create_table :stylists do |t|
      t.string :username
      t.string :email
      t.references :salon
      t.timestamps
    end
  end
end
