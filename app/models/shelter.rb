class Shelter < ApplicationRecord
  validates_presence_of :name
  has_many :pets

  def total
    pets.count
  end
end
