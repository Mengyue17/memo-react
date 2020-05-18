class Stock < ActiveRecord::Base


validates_presence_of :symbol
 
 def validate
	errors.add(:symbol, "Must be a valid Ticker Symbol") if date.nil?|| date == "invalid date"
  end


  def Stock::getStock(ticker)
	# Special Charac