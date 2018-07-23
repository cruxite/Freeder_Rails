class CreateJobPostings < ActiveRecord::Migration[5.2]
  def change
    create_table :job_postings do |t|
      t.string :title
      t.string :url
      t.text :content
      t.integer :entry_id
      t.datetime :job_published_at
      t.datetime :job_updated_at
      t.belongs_to :department, foreign_key: true

      t.timestamps
    end
  end
end
