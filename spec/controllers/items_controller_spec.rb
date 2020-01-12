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

        it 'redirects to items_path' do
          subject
          expect(response).to redirect_to(items_path)
        end
      end
      context 'can not save' do
        let(:invalid_params) { { user_id: user.id, item: attributes_for(:item, name: nil, price: nil) } }

        subject {
          post :create,
          params: invalid_params
        }

        it 'does not count up' do
          expect{ subject }.not_to change(Item, :count)
        end

        it 'renders new' do
          subject
          expect(response).to render_template :new
        end
      end
    end

    context 'not log in' do
      it 'redirects to new_user_session_path' do
        post :create, params: params
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end
