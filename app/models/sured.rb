class Sured < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :sured_category_relation, dependent: :destroy
  has_many :categories, through: :sured_category_relation
  validates :title, presence:true, length:{ maximum:100}
  validates :editer, presence:true
  validates :category_ids, presence: true

  scope :recent, -> { order(id: :desc) }

  def self.seach(seach)
    where(['title LIKE ?', "%#{seach}%"])
  end
end
