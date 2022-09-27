class RenameTypeOfDescriptionInDemos < ActiveRecord::Migration[7.0]
  def change
    rename_column :demos, :string, :description
  end
end
