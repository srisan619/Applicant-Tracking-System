class AddAccountColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :organization_type, :string,  null: true, default: "For Profit"
  end
end
