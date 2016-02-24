require "rails_helper"

feature "Savings" do
  feature "user vists #new" do
    it "has a random button that loads random suggested savings" do
      visit "/"

      click_button "Random"

    end
  end
end
