class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.text :name
      t.text :address
      t.date :creation_date

      t.timestamps
    end
  end
end
