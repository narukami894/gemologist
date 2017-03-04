class Developer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable and :timeoutable
  devise :confirmable, :database_authenticatable, :omniauthable,
         :recoverable, :registerable, :rememberable, :trackable, :validatable
  enum role: { staff: 0, team_leader: 1, manager: 2 }
  has_many :teams, through: :developer_teams
  has_many :developer_teams
end
