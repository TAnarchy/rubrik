class CreateGradedComponents < ActiveRecord::Migration
  def self.up
    create_table :graded_components do |t|
      t.integer :points_received
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :graded_components
  end
end
