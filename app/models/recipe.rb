class Recipe < ActiveRecord::Base
  has_many :ingredient_uses
  has_many :ingredients, :through => :ingredient_uses
  attr_accessible :description, :name, :ingredient_ids

  def ingredient_names
  	ingredients.collect {|ingredient| ingredient.name}. to_sentence
  end
  
end
