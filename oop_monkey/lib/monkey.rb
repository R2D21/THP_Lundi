# coding: utf-8
class Monkey
  attr_accessor :firstname,:lastname
  def initialize(names,species)
    @firstname = names
    @species = species
    @food_eat = []
  end
  def name
    return "#{@firstname.capitalize}"
  end
  def species
    return "#{@species}"
  end

  def eat(food)
    voyelles = "aeiouy"
    voyelles.each_char do | objet |
      if (food[0] ==  objet)
        return
      end
    end
    @food_eat.push(food)
  end
  def foods_eaten
    return @food_eat
  end

  def introduce
    return "Je suis #{@firstname}, de la race des #{@species}, et j'ai mangé du #{@food_eat.join(", ")}."

  end
end
