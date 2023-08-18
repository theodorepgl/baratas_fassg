#Customer may enter their name at the start of the checkout process
def get_name
	puts "Hello, welcome to Baratas Supermarket."
	puts "Please key in your name."
	@player_name = gets.chomp.upcase
	puts "Welcome #{@player_name}!"
end
puts get_name

#Customer may enter multiple item prices (until the customer choose to finish entering prices of each item)
def enter_prices
	puts "Please enter the prices of each items."

end
puts enter_prices

#Prices entered may only be either of Integer or Float data type only, anything else should throw a message to the customer asking them to reenter the prices.
def wrong_enter

end

#Customer may enter a discount voucher code or skip it if they wish so
def discount_voucher

end

#If the voucher code is invalid, then tell the customer about it and let them reenter the voucher code, or skip the voucher code altogether. Assume that the voucher code applies a fixed percentage discount to the total of purchase in all circumstances.
def invalid_voucher

end

#The end price should be shown together with the voucher code applied (if any), and how much discount (in percentage was applied).
def total_discount

end

#Customers will enter the amount to be paid in cash into the system. Again, the amount to be paid must either only be in Integer or Float.
def total_amount

end

#If the amount paid is equal or greater than the final amount displayed, then finish the transaction by greeting ‘Thanks’ (or anything equivalent) to the customer together with the change (if any).
def balance_count

end

#If the amount paid is less than the final amount displayed, then ask the customer to re-enter the amount until they enter an amount equal or greater than the displayed final amount.
def invalid_payment

end

def count_down
	time = 5 
	time2 = 4 
	time3 = 3 
	time4 = 2 
	time5 = 1

	message = "Processing in %d seconds" % [time]
	message2 = "Processing in %d seconds" % [time2]
	message3 = "Processing in %d seconds" % [time3]
	message4 = "Processing in %d seconds" % [time4]
	message5 = "Processing in %d seconds" % [time5]

	puts message 
	puts message2 
	puts message3 
	puts message4 
	puts message5
end
#uts count_down