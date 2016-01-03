class Recipe < ActiveRecord::Base
  belongs_to :category
  has_many :ratings
  has_and_belongs_to_many :keywords
end
