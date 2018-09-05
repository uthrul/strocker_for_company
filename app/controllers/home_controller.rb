class HomeController < ApplicationController
  def index
      if params[:id] == ""
        @nothing = "Hey, you forget to enter a symbol"
      elsif

        if params[:id]
          begin
            @stock = StockQuote::Stock.quote(params[:id]) 
          rescue StandardError
            @error = "that stock symbols doesnt exits... please tyr again."
          end

        end
      end
  end

  def about
  end
end
