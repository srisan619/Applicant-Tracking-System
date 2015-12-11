class CreateCandidateEmployers < ActiveRecord::Migration
  def change
    create_table :candidate_employers do |t|
      t.string :employer_name
      t.integer :candidate_id
      t.date :start_date
      t.date :end_date
      t.string :title
      t.timestamps
    end
  end
end
