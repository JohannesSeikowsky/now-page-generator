class AddProfileImageDeleteToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :profile_image_delete, :boolean, :default => false
  end
end
