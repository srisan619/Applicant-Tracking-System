class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :task_category_id
      t.integer :user_id
      t.boolean :is_email_notify, default: false
      t.text :subject
      t.date :task_date
      t.datetime :start_time
      t.datetime :end_time
      t.integer :candidate_id
      t.string :status
      t.timestamps
    end
  end
end
