class AddAttributesToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :title, :string
    add_column :profiles, :subtitle, :string
    add_column :profiles, :contact_text, :text
  end
end
