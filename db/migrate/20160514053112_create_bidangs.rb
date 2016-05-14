class CreateBidangs < ActiveRecord::Migration
  def change
    create_table :bidangs do |t|
      t.string :bidang_id
      t.string :bidang_name
      t.string :bidang_desc
      t.string :result_bidang
      t.string :fac_id

      t.timestamps null: false
    end
  end
end
