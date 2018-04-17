class CreateComment < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :name, null: false
      t.text :body, null: false
      t.belongs_to :post, index: true, null: false
      t.timestamps
    end
  end
end
