class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :descr
      t.integer :joke_id

      t.timestamps
    end
  end
end
