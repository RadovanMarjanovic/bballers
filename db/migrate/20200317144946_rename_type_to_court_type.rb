class RenameTypeToCourtType < ActiveRecord::Migration[5.2]
  def change
    rename_column :courts, :type, :court_type
  end
end
