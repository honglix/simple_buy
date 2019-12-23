class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string   "name"
      t.text     "description"
      t.integer  "price"
      t.integer  "quantity"
      t.integer  "category_id"
      t.integer  "brand_id"
      t.timestamps
    end
  end
end
