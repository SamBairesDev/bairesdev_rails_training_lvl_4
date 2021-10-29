class Person < ApplicationRecord
  acts_as_paranoid
  paginates_per 2

  belongs_to :project
  belongs_to :role

  validates :name, presence: true
end
