class Saving < ActiveRecord::Base
  validates :price, presence: true
  validates :name, presence: true, uniqueness: true
end
