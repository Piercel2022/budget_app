require 'rails_helper'

RSpec.describe 'Splashes', type: :request do
  describe 'GET /splash' do
    it 'returns http success' do
      get root_path
      expect(response).to have_http_status(:success)
    end
  end
end
