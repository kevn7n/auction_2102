class Auction
  attr_reader :items

  def initialize
    @items = []
    @item_names = []
    @unpopular_items = []
  end

  def add_item(item)
    @items << item
  end

  def item_names
    @items.map {|item| item.name}
  end

  def unpopular_items
    @items.find_all { |item| item.bids == {} }
  end

  def items_with_bid      #helper method :]
    @items.find_all { |item| item.bids != {} }
  end

  def potential_revenue
    items_with_bid.sum {|item| item.current_high_bid}
  end

  def bidders
    all_bidders = []
    items_with_bid.each do |item|
      item.bids.each do |bidder, bid|
        all_bidders << bidder.name if bid == item.current_high_bid
      end
    end
    all_bidders
  end

  def bidder_info
    info = Hash.new {|name, key| name[key] = {}}
    items_with_bid.each do |item|
      #info.attendee[:items] << item
      item.bids.each do |bidder, bid|
        require "pry"; binding.pry
        info[bidder] = {:budget => bidder.budget, :items => [] }  # ??
      end
    end
  end
end
