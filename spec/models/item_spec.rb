require 'rails_helper'

describe Item do
  describe "#create" do

    it "商品を登録できました" do
      item = build(:item)
      expect(item).to be_valid
    end

    it "商品名を入力してください" do
      item = build(:item, name:"")
      item.valid?
      expect(item.errors[:name]).to include("を入力してください")
    end

    it "商品名をは不正な値です" do
      item = build(:item, name:"--")
      item.valid?
      expect(item.errors[:name]).to include("は不正な値です")
    end

    it "上代を入力してください" do
      item = build(:item, price:"")
      item.valid?
      expect(item.errors[:price]).to include("を入力してください")
    end

    it "下代を入力してください" do
      item = build(:item, budget:"")
      item.valid?
      expect(item.errors[:budget]).to include("を入力してください")
    end


    it "放映日を入力してください" do
      item = build(:item, on_air:"")
      item.valid?
      expect(item.errors[:on_air]).to include("を入力してください")
    end
    
    it "カテゴリーを選択してください" do
      item = build(:item, category:"")
      item.valid?
      expect(item.errors[:category]).to include("を選択して下さい")
    end

  end
end