class RenameColumnFromStudents < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :dob, :test_dob
  end
end
