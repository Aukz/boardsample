class Sured < ApplicationRecord
  validates :title, presence:true, length:{ maximum:100}
  validates :editer, presence:true

  def self.seach(seach)
    where(['title LIKE ?', "%#{seach}%"])
  end
end
