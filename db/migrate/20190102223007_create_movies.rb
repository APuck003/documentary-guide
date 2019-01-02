class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.belongs_to :director, foreign_key: true
      t.integer :year
      t.text :bio

      t.timestamps
    end
  end
end
