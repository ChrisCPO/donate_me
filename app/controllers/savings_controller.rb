class SavingsController < ApplicationController

  def new
    @savings = random_savings
  end

  def random
    @savings = random_savings

    render partial: "savings/list", locals: { savings: @savings  }
  end

  private

  def random_savings
    Saving.all.shuffle.take(2)
  end
end
