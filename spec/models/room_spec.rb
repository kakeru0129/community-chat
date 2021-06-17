require 'rails_helper'

RSpec.describe Room, type: :model do
  describe '#create' do
    before do
      @room = FactoryBot.build(:room)
    end
    it 'nameの値が存在すれば登録できること' do
      expect(@room).to be_valid
    end
    it 'nameが空では登録できないこと' do
      @room.name = ''
      @room.valid?
      expect(@room.errors.full_messages).to include("Name can't be blank")
    end
    it 'category_idが空では登録できないこと' do
      @room.category_id = ''
      @room.valid?
      expect(@room.errors.full_messages).to include("Category を選択してください")
    end
    it 'category_idが1では登録できないこと' do
      @room.category_id = 1
      @room.valid?
      expect(@room.errors.full_messages).to include("Category を選択してください")
    end
  end
end
