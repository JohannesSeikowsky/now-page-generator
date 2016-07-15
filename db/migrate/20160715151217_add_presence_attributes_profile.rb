class AddPresenceAttributesProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :title_presence, :boolean, :default => true
    add_column :profiles, :subtitle_presence, :boolean, :default => true
    add_column :profiles, :content_presence, :boolean, :default => true
    add_column :profiles, :contact_text_presence, :boolean, :default => true
  end
end
