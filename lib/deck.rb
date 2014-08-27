class Deck
RANK = [:A, 2, 3, 4, 5, 6, 7, 8, 9, :T, :J, :Q, :K]
SUIT = [:♣️, :♦️, :♥️, :♠️]

	attr_accessor :cards	
	def initialize
		@cards=[]
		cardify
	end
	def shuffle
		7.times do
			cards.shuffle!
		end		
	end
	def deal (n=1)
	    cards.slice!(0,n)
    end
    def cardify
    	RANK.product(SUIT).each{|c| cards<< Card.new(c[0],c[1])}
	end

    class Card <Struct.new(:rank, :suit); end
end

class Hand
	attr_accessor :deck, :cards, :p1, :p2, :flop, :turn, :river
	def initialize
		@deck = Deck.new
		@cards= deck.cards
		
	end
	def deal(n=1)
		deck.deal(n)
	end
	def dealify
		deck.shuffle
		@p1= PlayerHand.new(deal, deal)
		@p2= PlayerHand.new(deal, deal) 
		@flop = []<<deal<<deal<<deal
		@turn = deal
		@river = deal
		nil
	end
	class PlayerHand <Struct.new(:hole_card_1, :hole_card_2); end
end
=begin
DON'T actually deal, set up struct to index from cards?
so cards[0] is p1_hand[0], cards[1] is p2_hand[0]...

SH!P!T
	 sign in with facebook, 'jersey bet'
	 use facebook tos to spam welcher
	 ?????
	 profit
=end
