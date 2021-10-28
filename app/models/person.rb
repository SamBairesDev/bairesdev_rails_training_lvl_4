class Person < ApplicationRecord
  belongs_to :project
  belongs_to :role
end
