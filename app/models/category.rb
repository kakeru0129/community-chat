class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: 'ゲームジャンルを選択' },
    { id: 2, name: 'アクション' },
    { id: 3, name: 'シューティング' },
    { id: 4, name: 'シュミレーション' },
    { id: 5, name: 'レーシング' },
    { id: 6, name: 'アドベンチャー' },
    { id: 7, name: 'ロールプレイング' },
    { id: 8, name: 'パズル' },
    { id: 9, name: '音楽' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :rooms
  
end
 