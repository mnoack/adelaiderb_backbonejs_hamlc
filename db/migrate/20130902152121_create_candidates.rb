class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.integer :group_id, :position
      t.timestamps
    end
  end
end
