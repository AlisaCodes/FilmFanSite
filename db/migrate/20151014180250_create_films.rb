class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.string :url
      t.string :description

      t.timestamps
    end
  end
end
