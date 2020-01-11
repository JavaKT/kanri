require 'rails_helper'

describe RegisrationsController do
  describe 'GET #new' do
    it "ユーザ新規登録画面" do
      get :new
      expect(response).to render_template :new
    end

    it "ユーザ編集画面" do
      get :edit
      expect(response).to render_template :edit
    end

  end
end