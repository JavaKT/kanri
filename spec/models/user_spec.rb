require 'rails_helper'

describe User do
  describe '#create' do
    it "名前を入力してください" do
      user = build(:user, username: "")
      user.valid?
      expect(user.errors[:username]).to include("を入力して下さい")
    end
  end
end