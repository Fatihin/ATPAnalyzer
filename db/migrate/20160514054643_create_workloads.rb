class CreateWorkloads < ActiveRecord::Migration
  def change
    create_table :workloads do |t|
      t.integer :load_id
      t.integer :lec_id
      t.integer :ks_dip
      t.integer :ps_dip
      t.integer :ks_deg
      t.integer :ps_deg
      t.integer :total_dip
      t.integer :total_deg
      t.integer :ks_postgrade
      t.integer :ps_postgrade
      t.integer :total_postgrade
      t.integer :k1
      t.integer :k2
      t.integer :k3
      t.integer :KTS
      t.integer :ATP

      t.timestamps null: false
    end
  end
end
