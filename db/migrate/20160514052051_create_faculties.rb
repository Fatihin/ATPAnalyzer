class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :fac_id
      t.string :fac_name

      t.timestamps null: false
    end
  end
end
