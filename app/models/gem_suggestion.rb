class GemSuggestion < ApplicationRecord
  belongs_to :developer
  belongs_to :gemfile
end
