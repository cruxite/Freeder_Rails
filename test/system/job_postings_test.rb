require "application_system_test_case"

class JobPostingsTest < ApplicationSystemTestCase
  setup do
    @job_posting = job_postings(:one)
  end

  test "visiting the index" do
    visit job_postings_url
    assert_selector "h1", text: "Job Postings"
  end

  test "creating a Job posting" do
    visit job_postings_url
    click_on "New Job Posting"

    fill_in "Content", with: @job_posting.content
    fill_in "Department", with: @job_posting.department_id
    fill_in "Entry", with: @job_posting.entry_id
    fill_in "Job Published At", with: @job_posting.job_published_at
    fill_in "Job Updated At", with: @job_posting.job_updated_at
    fill_in "Title", with: @job_posting.title
    fill_in "Url", with: @job_posting.url
    click_on "Create Job posting"

    assert_text "Job posting was successfully created"
    click_on "Back"
  end

  test "updating a Job posting" do
    visit job_postings_url
    click_on "Edit", match: :first

    fill_in "Content", with: @job_posting.content
    fill_in "Department", with: @job_posting.department_id
    fill_in "Entry", with: @job_posting.entry_id
    fill_in "Job Published At", with: @job_posting.job_published_at
    fill_in "Job Updated At", with: @job_posting.job_updated_at
    fill_in "Title", with: @job_posting.title
    fill_in "Url", with: @job_posting.url
    click_on "Update Job posting"

    assert_text "Job posting was successfully updated"
    click_on "Back"
  end

  test "destroying a Job posting" do
    visit job_postings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job posting was successfully destroyed"
  end
end
