require "csv"
require "./hotels_info"

class HotelQuery
  def initialize(filename)
    @filename = filename
    @hotels =[]
  end

  def print_hotel_names
    CSV.foreach(@filename, headers: true) do |row|
      @hotels << HotelInfo.new(row)
    end
  end
  
  def display_hotel_info
    @hotels.each do |hotel|
      hotel.output
    end
  end 

  def print_display_hotel_info
    print_hotel_names
    display_hotel_info
  end
end

query_hotel_info = HotelQuery.new("./hotels.csv")
query_hotel_info.print_display_hotel_info