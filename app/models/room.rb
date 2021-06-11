class Room < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  validates :category_id, presence: true
  validates :name,        presence: true

  validates :category_id, numericality: { other_than: 1, message:'を選択してください' } 

  has_many :room_users
  has_many :users, through: :room_users
  has_many :messages
end
