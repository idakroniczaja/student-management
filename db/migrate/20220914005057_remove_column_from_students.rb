class RemoveColumnFromStudents < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :test_dob, :string
  end
end
