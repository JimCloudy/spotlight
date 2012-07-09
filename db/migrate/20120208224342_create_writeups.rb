class CreateWriteups < ActiveRecord::Migration
  def change
    create_table :writeups do |t|
      t.integer :employee_id
      t.text :bio

      t.timestamps
    end
  end
end
