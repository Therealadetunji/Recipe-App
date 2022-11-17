require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/users/sign_in'
      expect(response).to have_http_status(:ok)
    end
  end
end
