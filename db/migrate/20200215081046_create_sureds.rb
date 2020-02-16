class CreateSureds < ActiveRecord::Migration[6.0]
  def change
    create_table :sureds do |t|
      t.string :title
      t.string :editer

      t.timestamps
    end
  end
end
