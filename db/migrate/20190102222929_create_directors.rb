class CreateDirectors < ActiveRecord::Migration[5.2]
  def change
    create_table :directors do |t|
      t.string :name
      t.string :country
      t.integer :yob
      t.text :bio

      t.timestamps
    end
  end
end
