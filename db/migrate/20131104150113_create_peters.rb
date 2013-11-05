class CreatePeters < ActiveRecord::Migration
  def change
    create_table :peters do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
