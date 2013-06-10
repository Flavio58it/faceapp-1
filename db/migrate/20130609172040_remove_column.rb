class RemoveColumn < ActiveRecord::Migration
  def up
  end

  def down
      remove_column :people, :avatar
  end
end
