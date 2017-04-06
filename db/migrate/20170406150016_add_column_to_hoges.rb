class AddColumnToHoges < ActiveRecord::Migration[5.0]
  def change
    add_column :hoges, :abc, :string
  end
end
