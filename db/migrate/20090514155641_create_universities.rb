class CreateUniversities < ActiveRecord::Migration
  def self.up
    create_table :universities do |t|
      t.string :university_name

      t.timestamps
    end
  end

  def self.down
    drop_table :universities
  end
end
