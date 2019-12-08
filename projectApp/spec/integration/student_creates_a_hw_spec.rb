require 'rails_helper.rb'

feature"Student creates a HW assigment" do
    scenario "Student successfully enters information into field and creates hw"do
        visit new_homework_path
        expect(page).to have_field("Hw name")
        expect(page).to have_field("Due date")
        expect(page).to have_field("Time required")
        expect(page).to have_field("Note")
        fill_in "Hw name", with: "RSPEC TEST"
        fill_in "Due date", with: "2019-12-25"
        fill_in "Time required", with: "1 hour"
        fill_in "Note", with: "This is a test"
        click_button "Save Homework"
        expect(page).to have_content("RSPEC TEST")
        expect(page).to have_content("2019-12-25")
    end
end