class GemSuggestionsController < ApplicationController
  def index
    @suggestions = GemSuggestion.all
  end

end
