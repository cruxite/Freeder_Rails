include Feedjira

xml = HTTParty.get(OSU_JOB_FEED).body
feed = Feedjira::Parser::Atom.parse xml

def get_department_from_entry entry
  Department.where(name: entry.author).first_or_create
end

def self.map_entry_to_job entry
  {
    title: entry.title,
    url: entry.url,
    entry_id: entry.entry_id.to_i,
    job_published_at: entry.published,
    job_updated_at: entry.updated,
    content: entry.content
  }
end

unless feed.blank?
  if feed.entries.any?
    feed.entries.each do |entry|
      department = get_department_from_entry(entry)
      department.job_postings.create(map_entry_to_job(entry))
    end
  end
end


