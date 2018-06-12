class CreateTubes < ActiveRecord::Migration[5.1]
  def change
    create_table :tubes do |t|
      t.string :title
      t.text :transcript

      t.timestamps
    end
  end
end
