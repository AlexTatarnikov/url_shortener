class CreateRedirects < ActiveRecord::Migration[5.2]
  def change
    create_table :redirects do |t|
      t.string :request_ip, null: false
      t.string :location
      t.references :link, foreign_key: true, null: false, index: true

      t.timestamps
    end
  end
end
