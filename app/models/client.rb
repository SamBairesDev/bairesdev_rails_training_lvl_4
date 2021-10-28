class Client < ApplicationRecord
  acts_as_paranoid
  
  belongs_to :person

  validates :person, uniqueness: true
end
