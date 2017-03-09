module HelperMethods
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  def name(name)
    @name = name
  end
  def titleize
    @name.capitalize!
    exclude = ['in','the','of','and','or','from']
    phrase = @name.split(" ").map {|word|
        if exclude.include?(word)
            word
        else
            word.capitalize
        end
    }.join(" ")
  phrase
  end

end


class Movie
  include HelperMethods
end
class Book
  extend HelperMethods
end

p movie = Movie.new('the lord of the rings and stuff').titleize
p Book.name('harry potter and the chamber of other stuff')
