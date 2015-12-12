class CreateCandidateDegrees < ActiveRecord::Migration
  def change
    create_table :candidate_degrees do |t|
      t.string :school_name
      t.integer :candidate_id
      t.date :year
      t.string :degree_name
      t.string :major
      t.timestamps
    end
  end
end
