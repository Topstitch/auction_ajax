class BidsController < ApplicationController

  def create
    @bid = Bid.new(bid_params)
    @item = @bid.item
    @bid.save
  end


  private
    # Only allow a trusted parameter "white list" through.
    def bid_params
      params.require(:bid).permit(:amount, :item_id)
    end
end
