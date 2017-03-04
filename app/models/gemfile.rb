class Gemfile < ApplicationRecord
  belongs_to :project
  has_many :developers, through: :gem_suggestions
  has_many :gem_suggestions
end
