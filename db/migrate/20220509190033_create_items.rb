class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.text :deletion_reason, optional: true, default: nil
      t.integer :quantity, default: 0
      t.float :price, default: 0.00
      t.boolean :deleted, default: false
      t.timestamps
    end
  end
end
