class CreateSuredCategoryRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :sured_category_relations do |t|
      t.integer :sured_id
      t.integer :category_id

      t.timestamps
    end
  end
end
