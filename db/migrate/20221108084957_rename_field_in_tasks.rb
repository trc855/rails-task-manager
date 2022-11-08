class RenameFieldInTasks < ActiveRecord::Migration[7.0]
  def change
    rename_column :tasks, :detials, :details
  end
end
