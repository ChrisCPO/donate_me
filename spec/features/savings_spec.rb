require "rails_helper"

feature "Savings", js: true do
  feature "user vists #new" do
    it "has a random button that loads random suggested savings" do
      create_list(:saving, 20)
      visit "/"

      selected_values = find("#savings-list")
      savings = selected_values.text

      click_link "Random"

      selected_values = find("#savings-list")
      new_savings = selected_values.text

      if savings == new_savings
        selected_values = find("#savings-list")
        new_savings = selected_values.text
      end

      expect(new_savings).not_to eq savings
    end
  end
end
