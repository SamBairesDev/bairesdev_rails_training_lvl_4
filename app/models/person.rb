class Person < ApplicationRecord
  acts_as_paranoid
  
  belongs_to :project
  belongs_to :role

  validates :name, presence: true
end
