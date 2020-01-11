require 'rails_helper'

describe User do

  describe "#create" do
  it "名前を入力してください" do
    user = build(:user, username: "")
    user.valid?
    expect(user.errors[:username]).to include("を入力してください")
    end
  end

  describe '#create' do
  it "名前は不正な値です" do
    user = build(:user, username: "111")
    user.valid?
    expect(user.errors[:username]).to include("は不正な値です")
    end
  end

  describe "#create" do
  it "部署名を選択してください" do
    user = build(:user, department:"")
    user.valid?
    expect(user.errors[:department]).to include("を選択して下さい")
    end
  end

  describe "#create" do
  it "入社日を選択してください" do
    user = build(:user, start_day:"")
    user.valid?
    expect(user.errors[:start_day]).to include("を選択して下さい")
    end
  end

  describe "#create" do
  it "内線番号を入力して下さい" do
    user = build(:user, number:"")
    user.valid?
    expect(user.errors[:number]).to include("を入力してください")
    end
  end

  describe "#create" do
  it "内線番号は不正な値です" do
    user = build(:user, number:"ないせん")
    user.valid?
    expect(user.errors[:number]).to include("は不正な値です")
    end 
  end  

end
