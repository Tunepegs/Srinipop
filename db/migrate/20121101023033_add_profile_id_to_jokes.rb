class AddProfileIdToJokes < ActiveRecord::Migration
  def change
    add_column :jokes, :profile_id, :integer
  end
end
