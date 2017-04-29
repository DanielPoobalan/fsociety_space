class CreateLandslides < ActiveRecord::Migration
  def change
    create_table :landslides do |t|
    	t.date :date
    	t.string :time
    	t.string :country
    	t.string :nearest_places
    	t.string :hazard_type
    	t.string :landslide_type
    	t.string :trigger
    	t.string :storm_name
    	t.integer :fatalities
    	t.integer :injuries
    	t.string :source_name
    	t.string :source_link
    	t.string :location_description
    	t.string :location_accuracy
    	t.string :landslide_size
    	t.string :photos_link
    	t.string :cat_src
    	t.integer :cat_id
    	t.string :countryname
    	t.string :near
    	t.decimal :distance
    	t.string :adminname1
    	t.string :adminname2
    	t.string :population
    	t.string :countrycode
    	t.string :continentcode
    	t.string :key
    	t.integer :version
    	t.timestamps :tstamp
    	t.integer :changeset_id
    	t.decimal :latitude, {:precision=>10, :scale=>6}
    	t.decimal :longitude, {:precision=>10, :scale=>6}
    	t.string :geolocation
      t.timestamps null: false
    end
  end
end
