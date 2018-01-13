class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :last_name
      t.datetime :creation
      t.boolean :is_active
      t.integer :age

      t.timestamps
    end
  end
end
