class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :f_name
      t.string :l_name
      t.integer :dept
      t.integer :ext

      t.timestamps
    end
  end
end
