class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.string :author
      t.text :body
      t.references :fortune

      t.timestamps
    end
    add_index :shouts, :fortune_id
  end
end
