class QuotesController < ApplicationController

	def index
    @quote = Quote.order("RANDOM()").first
	end


  #Define method for creating a quote
  def create
    # set variable equal to creating a new quote with params
    @quote = Quote.create(quote_params)
    # if create quote is invalid
    if @quote.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    # if create quote is valid
    redirect_to root_path

  end

  def about
    
  end

  private

 #Define method for quote params
  def quote_params
    params.require(:quote).permit(:saying, :author)
  end
end
