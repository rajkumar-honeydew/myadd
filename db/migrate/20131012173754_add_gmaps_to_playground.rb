class AddGmapsToPlayground < ActiveRecord::Migration
  def change
    add_column :playgrounds, :gmaps, :boolean
    add_column :playgrounds, :state, :string
  end
end
