class AddSubmissionIdToGradedComponent < ActiveRecord::Migration
  def self.up
    add_column :graded_components, :submission_id, :integer
  end

  def self.down
    remove_column :graded_components, :submission_id
  end
end
