class CreateTaskCategories < ActiveRecord::Migration
  def change
    create_table :task_categories do |t|
      t.string :name, null: false
      t.integer :priority_order
      t.boolean :is_active, default: true
      t.timestamps
    end
  end
end