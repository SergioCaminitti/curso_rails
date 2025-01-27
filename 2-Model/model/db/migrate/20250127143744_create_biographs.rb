class CreateBiographs < ActiveRecord::Migration[8.0]
  def change
    create_table :biographs do |t|
      t.string :content
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
