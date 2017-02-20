class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title, index: true, null: false
      t.text :description
      t.references :user, foreign_key: true, index: true
      t.boolean :published, default: false
      t.boolean :active, default: true
      t.datetime :deactivated_at
      t.timestamps
    end
  end
end
