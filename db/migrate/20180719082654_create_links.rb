class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :code, null: false
      t.string :url, null: false

      t.timestamps
    end

    add_index :links, :code, unique: true
  end
end
