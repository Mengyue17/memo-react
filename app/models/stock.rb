class Stock < ActiveRecord::Base


validates_presence_of :symbol
 
 def validate
	errors.add(:symbol, "Must be a v