require 'rails_helper'

describe User do
  describe "#create" do

    it "ユーザを登録できました" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "名前を入力してください" do
      user = build(:user, username: "")
      user.valid?
      expect(user.errors[:username]).to include("を入力してください")
      end
  
    it "名前は不正な値です" do
      user = build(:user, username: "111")
      user.valid?
      expect(user.errors[:username]).to include("は不正な値です")
    end

    it "メールアドレスを入力してください" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    it "確認用パスワードが一致しません" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
    end
  

    it "部署名を選択してください" do
      user = build(:user, department:"")
      user.valid?
      expect(user.errors[:department]).to include("を選択して下さい")
    end
  

    it "入社日を選択してください" do
      user = build(:user, start_day:"")
      user.valid?
      expect(user.errors[:start_day]).to include("を選択して下さい")
    end

    it "内線番号を入力して下さい" do
      user = build(:user, number:"")
      user.valid?
      expect(user.errors[:number]).to include("を入力してください")
    end

    it "内線番号は不正な値です" do
      user = build(:user, number:"ないせん")
      user.valid?
      expect(user.errors[:number]).to include("は不正な値です")
    end 

    it "そのメールアドレスは既に使用されています" do
      user1 = FactoryBot.create(:user)
      expect(FactoryBot.build(:user, email: user1.email)).to_not be_valid
    end

    it "パスワード" do
      user = build(:user, password: "000000", password_confirmation: "000000")
      user.valid?
      expect(user).to be_valid
    end

    it "パスワードは6文字以上で入力して下さい " do
      user = build(:user, password: "00000", password_confirmation: "00000")
      user.valid?
      expect(user.errors[:password]).to include("は6文字以上で入力してください")
    end

  end
end