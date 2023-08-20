#ASSIGNMENT 1

@discount = { "JORDAN" => 0.9, "MAGIC" => 0.7, "BRYANT" => 0.5 }
@product_price = { "NIKE" => 388.80, "PUMA" => 266.70, "ADIDAS" => 444.30 }
@selected_items = []
@counter = 0

def name_part
	puts "Hello, Welcome to Baratas Supermarket!" 
	puts "Please fill in your name to proceed."
	customer_name = gets.chomp.upcase
	puts "Hello, Mr/Miss #{customer_name}."
end

def items_part
	puts "Items on SALES now: "
	@product_price.each {|key, value| puts "#{key}"}
end

def prices_part
	puts "Select the items: "
	while @item = gets.chomp
		case @item
		when @item == "0", "PUMA", "NIKE", "ADIDAS" 
			puts "The price of the selected item #{@item} is #{@product_price[@item]} USD."
		    break
		else
			puts "Item not available, please choose again."
		end	
	end
end

def addon_part
	puts "Press 'y' if want to add more items."
	puts "or press any button proceed to discount section."
    @continuing = gets.chomp.downcase
end

def selected_part
	@selected_items << @item
	puts "Your Selected Items are #{@selected_items}"
	@counter += @product_price[@item]     
	puts "Total net amount: #{@counter} USD."
end

def discount_part
	puts "Please enter voucher code provide to try your luck."
	puts "JORDAN , MAGIC , BRYANT"
	while @discount_code = gets.chomp
		case @discount_code
		when @discount_code == "0", "JORDAN", "MAGIC", "BRYANT" 
			@after_discount = @counter * @discount[@discount_code]
		    puts "Total amount to pay: #{@after_discount.round(2)} USD."
		    puts "Discount code applied: #{@discount_code}, #{@discount[@discount_code]}"
		    break
		else
			puts "WRONG CODE, please fill in the right code."
		end	
	end
end

def payment_part(total_amount)
	loop do
 	puts "Please enter cash"
 	@payment = gets.chomp.to_f
 	break if @payment >= total_amount
    puts "Insufficient amount. Please check the total amount to pay."
    end
    balance = @payment - total_amount
    puts "Your change is:" "#{balance.round(2)} USD."
    puts "Thank you for shopping with Baratas Supermarket!"
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

loop do
	name_part
	items_part
	loop do
		prices_part
		selected_part
	    addon_part
		break if @continuing != "y"	
	end
	discount_part
	payment_part(@after_discount)
	count_down
end