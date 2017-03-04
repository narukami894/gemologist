class Project < ApplicationRecord
  belongs_to :team
  has_one :gemfile
end
