class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string,  null: true, default: ""
    add_column :users, :last_name, :string,  null: true, default: ""
    add_column :users, :type, :string,  null: false, default: ""
    add_column :users, :company_name, :string,  null: true, default: ""
    add_column :users, :company_url, :string,  null: true, default: ""
    add_column :users, :phone, :string,  null: true, default: ""
    add_column :users, :mobile_phone, :string,  null: true, default: ""
    add_column :users, :employees_count, :integer,  null: true, default: ""
    add_column :users, :package_id, :integer,  null: true, default: ""
    add_column :users, :country, :string,  null: true, default: ""
    add_column :users, :links, :text
  end
end
