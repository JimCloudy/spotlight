class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :employee_id
      t.string :url

      t.timestamps
    end
  end
end
