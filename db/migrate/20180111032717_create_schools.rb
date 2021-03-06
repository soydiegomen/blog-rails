class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.datetime :creation
      t.boolean :is_active
      t.integer :students_count

      t.timestamps
    end
  end
end
