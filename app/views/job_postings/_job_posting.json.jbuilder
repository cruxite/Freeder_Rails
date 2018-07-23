json.extract! job_posting, :id, :title, :url, :content, :entry_id, :job_published_at, :job_updated_at, :department_id, :created_at, :updated_at
json.url job_posting_url(job_posting, format: :json)
