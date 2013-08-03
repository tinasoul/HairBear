class CreateSalons < ActiveRecord::Migration
  def change
    create_table :salons do |t|
      t.string :salon_name
      t.string :email
      t.string :address
      t.string :phone_number

      t.timestamps
    end
  end
end
