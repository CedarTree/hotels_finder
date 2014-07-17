require "csv"
require "./hotels_info"

class HotelQuery
  def initialize(filename)
    @filename = filename
    @hotels =[]
  end

  def find_hotel_info
    CSV.foreach(@filename, headers: true) do |row|
      @hotels << HotelInfo.new(row)
    end
  end
  
  def display_hotel_info
    @hotels.each do |hotel|
     hotels.output
   end
 end 

 def find_display_hotel_info
   find_hotel_info
   display_hotel_info
 end
end

query_hotel_info = HotelQuery.new("./hotels.csv")
query_hotel_info.find_display_hotel_info