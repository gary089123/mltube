class AddVideoToTube < ActiveRecord::Migration[5.1]
  def change
    add_column :tubes, :video, :string
  end
end
