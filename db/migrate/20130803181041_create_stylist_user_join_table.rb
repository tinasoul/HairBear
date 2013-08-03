class CreateStylistUserJoinTable < ActiveRecord::Migration
  def change
    create_table :stylists_users, :id => false do |t|
      t.integer :stylist_id
      t.integer :user_id
    end
  end
end
