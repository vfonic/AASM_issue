class AddJobState < ActiveRecord::Migration
  def up
    add_column :jobs, :aasm_state, :string
  end

  def down
    remove_column :jobs, :aasm_state
  end
end
