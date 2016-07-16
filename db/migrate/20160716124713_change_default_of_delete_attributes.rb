class ChangeDefaultOfDeleteAttributes < ActiveRecord::Migration
  def change
    change_column :profiles, :title_delete, :boolean, :default => false
    change_column :profiles, :subtitle_delete, :boolean, :default => false
    change_column :profiles, :content_delete, :boolean, :default => false
    change_column :profiles, :contact_text_delete, :boolean, :default => false
  end
end
