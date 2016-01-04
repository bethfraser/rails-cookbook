class Recipe < ActiveRecord::Base
  belongs_to :category
  has_many :ratings
  has_and_belongs_to_many :keywords
  has_many :quantities
  has_many :ingredients, through: :quantities
  accepts_nested_attributes_for :quantities
end
