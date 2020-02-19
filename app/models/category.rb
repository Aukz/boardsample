class Category < ApplicationRecord
  has_many :sured_category_relation, dependent: :destroy
  has_many :sureds, through: :sured_category_relation
end
