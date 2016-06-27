class RemovingUnnecessaryAttributes < ActiveRecord::Migration
  def change
    remove_column :users, :name, :string
    remove_column :profiles, :profile_name, :string
  end
end
