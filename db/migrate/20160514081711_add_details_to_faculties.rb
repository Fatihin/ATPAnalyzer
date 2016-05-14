class AddDetailsToFaculties < ActiveRecord::Migration
  def change
      add_column :faculties, :fac_pass, :string
  end
end
