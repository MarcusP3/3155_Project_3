require 'rails_helper.rb'

feature"Student navigates to calendar" do
    scenario "Student successfully navigates to the calendar from welcome page" do
        visit root_path
        expect(page).to have_content("schedule")
        expect(page).to have_content("Create Homework")
        click_link "Schedule"
        expect(page).to have_content("Schedule")
        expect(page).to have_content("<")
        expect(page).to have_content(">")
        expect(page).to have_content("Sunday")
    end
end