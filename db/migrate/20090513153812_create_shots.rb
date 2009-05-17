class CreateShots < ActiveRecord::Migration
  def self.up
    create_table :shots do |t|
      t.string :tape_id
      t.datetime :shot_in
      t.datetime :shot_out
      t.text :actors
      t.string :campus
      t.string :location
      t.string :province
      t.string :country
      t.string :topic
      t.text :keywords

      t.timestamps
    end
  end

  def self.down
    drop_table :shots
  end
end
