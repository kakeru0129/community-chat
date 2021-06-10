class Room < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  validates :category_id, presence: true

  validates :category_id, numericality: { other_than: 1, message:'を選択してください' } 

end
