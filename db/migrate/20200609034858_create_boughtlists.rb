class CreateBoughtlists < ActiveRecord::Migration[6.0]
  def change
    create_table :boughtlists do |t|
      t.string :item
      t.integer :price
      t.integer :pergram

      t.timestamps
    end
  end
end
