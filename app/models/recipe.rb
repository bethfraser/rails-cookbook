class Recipe < ActiveRecord::Base
  belongs_to :category
  has_many :ratings
  has_and_belongs_to_many :keywords
  has_many :quantities, dependent: :destroy
  has_many :ingredients, through: :quantities
  accepts_nested_attributes_for :quantities
  accepts_nested_attributes_for :ingredients
end
