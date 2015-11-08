class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.decimal :amount
      t.boolean :is_active, null:false, default: true
      t.timestamps null: false
    end
  end
end
