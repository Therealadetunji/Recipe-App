require 'rails_helper'

RSpec.describe 'RecipeFoods', type: :request do
  describe 'GET /new' do
    it 'returns http success' do
      get '/recipes/1/recipe_foods/new'
      expect(response).to have_http_status(302)
    end
  end
end
