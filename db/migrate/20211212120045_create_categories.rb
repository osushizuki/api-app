class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories, id: :bigint do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
