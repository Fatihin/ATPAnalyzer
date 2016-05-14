class CreateLecturers < ActiveRecord::Migration
  def change
    create_table :lecturers do |t|
      t.integer :lec_id
      t.string :name
      t.string :state
      t.string :campus
      t.string :gred
      t.string :ATS_diff
      t.string :committee
      t.string :trek
      t.string :office_admin
      t.string :academic
      t.string :position_status
      t.string :result_lecturer
      t.integer :fac_id
        

      t.timestamps null: false
    end
  end
end
