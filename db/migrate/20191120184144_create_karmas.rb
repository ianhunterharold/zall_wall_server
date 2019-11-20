class CreateKarmas < ActiveRecord::Migration[6.0]
  def change
    create_table :karmas do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
