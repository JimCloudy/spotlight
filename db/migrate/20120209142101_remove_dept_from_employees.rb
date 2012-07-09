class RemoveDeptFromEmployees < ActiveRecord::Migration
  def up
    remove_column :employees, :dept
      end

  def down
    add_column :employees, :dept, :integer
  end
end
