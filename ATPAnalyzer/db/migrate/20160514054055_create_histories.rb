class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :history_id
      t.integer :lec_id
      t.string :bidang_id
      t.string :unjuran_id
      t.string :fac_id
      t.date :year

      t.timestamps null: false
    end
  end
end
