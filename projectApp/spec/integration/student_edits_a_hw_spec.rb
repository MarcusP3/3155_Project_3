require 'rails_helper.rb'

feature"Student Edits a hw assigment" do
    scenario "starting at calendar Student successfully edits a hw assigment" do
        # create hw first to later 
        visit new_homework_path
        fill_in "Hw name", with: "RSPEC TEST"
        fill_in "Due date", with: "2019-12-25"
        fill_in "Time required", with: "1 hour"
        fill_in "Note", with: "This is a test"
        click_button "Save Homework"
        expect(page).to have_content("RSPEC TEST")
        expect(page).to have_content("Edit")
        click_link "Edit"
        fill_in "Time required", with: "2 hours"
        click_button "Save Homework"
        expect(page).to have_content("RSPEC TEST")
        expect(page).to have_content("2 hours")
    end
end