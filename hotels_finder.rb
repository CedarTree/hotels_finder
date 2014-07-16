require "csv"

class HotelFinder
  def initialize(hotel_name)
    @hotel_name = hotel_name
  end

  def find_hotel_names
    CSV.foreach(@hotel_name, headers: true) do |row|
      puts row["Hotel"].strip
    end
  end
end

find_hotel = HotelFinder.new("./hotels.csv")
find_hotel.find_hotel_names