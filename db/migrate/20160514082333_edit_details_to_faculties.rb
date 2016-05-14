class EditDetailsToFaculties < ActiveRecord::Migration
  def change
    remove_column :faculties, :faculty_pass, :string
  end
end
