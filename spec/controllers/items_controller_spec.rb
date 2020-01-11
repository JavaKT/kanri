require 'rails_helper'

describe ItemsController do
  let(:user) { create(:user) }
  
  describe 'POST #create' do
    let(:params) { { item: attributes_for(:item, user_id: user.id) } }
    context 'log in' do
      before do
       login_user(user)
      end
      
      context 'can save' do

        subject{
          post :create,
          params: params
        }

        it "count up item " do
          expect{ subject }.to change(Item, :count).by(1)
        end
      end
    end
  end
end