class CreateParkinglots < ActiveRecord::Migration[7.1]
  def change
    create_table :parkinglots do |t|
      t.string :company_name
      t.string :address

      t.timestamps
    end
  end
end
