class Deck
RANK = [:A, 2, 3, 4, 5, 6, 7, 8, 9, :T, :J, :Q, :K]
SUIT = [:♣️, :💎, :💖, :♠️]

	attr_accessor :cards
	def initialize
		@cards= []
		cross_product= [(RANK.product(SUIT))]
		cross_product.each{|c| @cards<< Card.new(c[0],c[1])}
	end
	def shuffle
		7.times do
			cards.shuffle!
		end		
	end
	def deal (n=1)
	    cards.slice!(0,n)
    end
    class Card <Struct.new(:rank, :suit); end
end

class Hand
	attr_accessor :deck, :cards, :flop, :turn, :river
	def initialize
		@deck = Deck.new
		@cards= cards
		deck.shuffle
		@flop = []<<deal<<deal<<deal
		@turn = deal
		@river = deal
	end
	def deal(n=1)
		deck.deal(n)
	end
end
=begin
	 sign in with facebook, 'jersey bet'
	 use facebook tos to spam welcher
	 ?????
	 profit
=end