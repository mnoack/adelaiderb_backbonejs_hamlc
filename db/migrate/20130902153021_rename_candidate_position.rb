class RenameCandidatePosition < ActiveRecord::Migration
  def change
    rename_column :candidates, :position, :ballot_position
  end
end
