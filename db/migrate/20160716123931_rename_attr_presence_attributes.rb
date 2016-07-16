class RenameAttrPresenceAttributes < ActiveRecord::Migration
  def change
    rename_column :profiles, :title_presence, :title_delete
    rename_column :profiles, :subtitle_presence, :subtitle_delete
    rename_column :profiles, :content_presence, :content_delete
    rename_column :profiles, :contact_text_presence, :contact_text_delete    
  end
end
