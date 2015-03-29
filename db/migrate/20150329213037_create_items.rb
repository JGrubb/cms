class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :slug
      t.text :summary

      t.timestamps null: false
    end
    add_index :items, :slug, unique: true
  end
end
