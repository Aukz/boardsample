class Comment < ApplicationRecord
  validates :response, presence: true
  belongs_to :sured
end
