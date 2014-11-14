require "minitest/autorun"
require_relative "../lib/deck.rb"

describe Deck do
	before do
		@deck= Deck.new
	end

    describe 'public interface' do
    	it 'responds to cards' do
    		@deck.must_respond_to :cards
    	end
    	it 'must be shuffle-able' do
    		@deck.must_respond_to :shuffle
    	end
    	it 'should respond to deal' do
       		@deck.must_respond_to :deal
       	end
    end
    describe 'deal' do
    	it 'deals top card of unshuffled deck' do
    	end
    end
end

describe Hand do
	before do
		@hand= Hand.new
	end
	describe 'public interface' do
		it 'responds to deck' do
			@hand.must_respond_to :deck
		end
		it 'responds to cards' do
			@hand.must_respond_to :cards
		end
		it 'responds to players' do
			@hand.must_respond_to :p1
			@hand.must_respond_to :p2
		end
		it 'responds to flop' do
			@hand.must_respond_to :flop
		end
		it 'responds to turn' do
			@hand.must_respond_to :turn
		end
		it 'responds to river' do
			@hand.must_respond_to :river
		end
		it 'responds to deal' do
			@hand.must_respond_to :deal
		end
		it 'responds to dealify, so the cards go where they need to' do
			@hand.must_respond_to :dealify
		end
	describe Showdown do
		before do
			@hand= Hand.new.dealify
		end
        it 'happens after the river'
        it 'reveals player hands'
        it 'determines the best hand' 
	end
	end

end
