class QuotesController < ApplicationController
	def index
		@quote = Quote.order("RANDOM()").first
	end

	def error
	end

	def last_quote
		@quote = Quote.last
	end


	def create
		@quote = Quote.create(quote_params)
		if @quote.invalid?
			flash[:error] = '<h2>Hmm, strange - It seems like your inputs were somehow invalid.</h2>'
			redirect_to error_path	
		else
			redirect_to last_quote_path
		end
	end

	def about
	end

	private

	def quote_params
		params.require(:quote).permit(:saying, :author)
	end
end
