class AddActiveToPeter < ActiveRecord::Migration
  def change
    add_column :peters, :active, :boolean, :default => true
  end
end
