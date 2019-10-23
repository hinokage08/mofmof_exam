class CreateNearestStations < ActiveRecord::Migration[5.0]
  def change
    create_table :nearest_stations do |t|
      t.string :route_name
      t.string :station_name
      t.integer :required_time
    end
  end
end
