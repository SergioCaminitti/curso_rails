class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :director
      t.integer :duration

      t.timestamps
    end
  end
end
