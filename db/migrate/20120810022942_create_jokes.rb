class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.text :joke
      t.string :user

      t.timestamps
    end
  end
end
