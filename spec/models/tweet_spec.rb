require 'rails_helper'

RSpec.describe Tweet, type: :model do
  before do
    @tweet = FactoryBot.build(:tweet)
  end

  describe '投稿機能' do
    context '投稿できるとき' do
      it 'image、type_name、datetime、quantity_id、size_id、weather_id、wind_id、feed、addressが存在すれば投稿できる' do
        expect(@tweet).to be_valid
      end
    end

    context '投稿できないとき' do
      it 'imageが空では投稿できない' do
        @tweet.image = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("画像を入力してください")
      end
      it 'type_nameが空では投稿できない' do
        @tweet.type_name = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("魚種を入力してください")
      end
      it 'datetimeが空では投稿できない' do
        @tweet.datetime = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("日時を入力してください")
      end
      it 'quantity_idが「---」のままでは投稿できない' do
        @tweet.quantity_id = 0
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include('数量を選択してください')
      end
      it 'size_idが「---」のままでは投稿できない' do
        @tweet.size_id = 0
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include('サイズを選択してください')
      end
      it 'weather_idが「---」のままでは投稿できない' do
        @tweet.weather_id = 0
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include('天気を選択してください')
      end
      it 'feedが空では投稿できない' do
        @tweet.feed = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("エサを入力してください")
      end
      it 'addressが空では投稿できない' do
        @tweet.address = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("釣れた場所を入力してください")
      end
      it 'type_nameが全角カタカナでなければ投稿できない' do
        @tweet.type_name = 'さば'
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("魚種は全角カタカナで入力してください")
      end
      it 'feedが全角文字でなければ投稿できない' do
        @tweet.feed = 'ﾙｱｰ'
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("エサは全角文字で入力してください")
      end
      
      
    end
  end
end
