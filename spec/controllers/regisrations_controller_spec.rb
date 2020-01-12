require 'rails_helper'

describe RegisrationsController do

  describe 'POST #create' do
    let(:user) { create(:user) }
    let(:params) { { user: attributes_for(:user) } }

      subject{
        post :create,
        params: params
      }

    it "count up item " do
      expect{ subject }.to change(User, :count).by(1)
      end
    it 'redirects to root_path' do
      subject
      expect(response).to redirect_to(root_path)
    end
  end
end

    