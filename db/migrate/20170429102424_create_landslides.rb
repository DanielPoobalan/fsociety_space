class CreateLandslides < ActiveRecord::Migration
  def change
    create_table :landslides do |t|
      t.timestamps null: false
    end
  end
end
