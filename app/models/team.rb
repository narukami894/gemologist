class Team < ApplicationRecord
  has_many :developers, through: :developer_teams
  has_many :developer_teams
  has_one :project
end
