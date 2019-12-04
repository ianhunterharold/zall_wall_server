class CreateKarmas < ActiveRecord::Migration[6.0]
  def change
    create_table :karmas do |t|
      t.string :content
      t.integer :user_id
      t.integer :giving_user_id
      t.string :from
      t.string :picture_of_giver

      t.timestamps
    end
  end
end
