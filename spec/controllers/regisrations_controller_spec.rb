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

  context 'log in' do
    before do
      user =create(:user) 
      login_user(user)
    end

    describe 'GET #edit' do
      it "assigns the requested user to @user" do
        user = create(:user)
        get :edit, params: { id: user }
        expect(assigns(:user)).to eq user
      end
    
      it "renders the :edit template" do
        user = create(:user)
        get :edit, params: { id: user }
        expect(response).to render_template :edit
      end
    end

    describe 'PATCH #update' do
      let(:user) { create(:user) }
  
      it 'saves updated user' do
        user_params = FactoryBot.attributes_for(:user, username: "NewName")
        patch regisration_path(user_params), params: { id: user.id, user: user_params }
        expect(user.reload.username).to eq "NewName"
        end
      end
    end
  end



  


