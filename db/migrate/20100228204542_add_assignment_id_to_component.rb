class AddAssignmentIdToComponent < ActiveRecord::Migration
  def self.up
    add_column :components, :assignment_id, :integer
  end

  def self.down
    remove_column :components, :assignment_id
  end
end
