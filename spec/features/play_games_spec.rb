require 'rails_helper'

RSpec.feature "PlayGames", type: :feature do
  context "playing game" do
    Steps "Starting a game" do
      Given "I'm on the game page" do
        visit '/'
        fill_in 'name', with: 'Bill Nye'
        fill_in 'email', with: 'BillNye@scienceGuy.com'
        click_button 'Register'
      end
      Then "I can play the game with an odd number" do
        fill_in 'user_guess', with: '5'
        click_button 'Play'
      end
      Then "I can see if the number is odd or even" do
        expect(page).to have_content 'Odd'
      end
      And "I can play the game with an even number" do
        fill_in 'user_guess', with: '6'
        click_button 'Play'
      end
      Then "I can see if the number is odd or even" do
        expect(page).to have_content 'Even'
      end
    end #end step
  end #end context
end #end feature
