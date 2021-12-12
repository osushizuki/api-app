class CreateIdeas < ActiveRecord::Migration[6.1]
  def change
    create_table :ideas, id: :bigint do |t|
      t.integer :category_id, limit: 8, null: false
      t.text :body, null: false
      t.timestamps
    end
  end
end
