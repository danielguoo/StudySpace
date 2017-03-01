class AddGradyearToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :gradyear, :integer
  end
end
