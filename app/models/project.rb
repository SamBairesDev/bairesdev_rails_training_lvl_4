class Project < ApplicationRecord
    acts_as_paranoid

    validates :name, presence: true
end
