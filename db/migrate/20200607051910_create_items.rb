class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :item
      t.integer :price, default: 0
      t.integer :pergrams, default: nil

      t.timestamps
    end
  end
end
