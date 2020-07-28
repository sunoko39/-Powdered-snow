class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :item
      t.integer :price
      t.integer :pergrams

      t.timestamps
    end
  end
end
