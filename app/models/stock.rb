class Stock < ActiveRecord::Base


validates_presence_of :symbol
 
 def validate
	errors.add(:symbol, "Must be a valid Ticker Symbol") if date.nil?|| date == "invalid date"
  end


  def Stock::getStock(ticker)
	# Special Characters:d1=date,t1=Last Trade Time, s=Symbol, n=Name, g=Day's Low, l1=Last Trade (Price Only), p2=Percent Change, h=Day's High, x=Stock Exchange (ref:http://www.gummy-stuff.org/Yaho