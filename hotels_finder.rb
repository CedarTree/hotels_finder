require "csv"

class FindHotel
  def initialize(hotel_name)
    @hotel_name = hotel_name
  end

  def find_hotel_names
    CSV.foreach(@hotel_name, headers: true) do |row|
      puts row["Hotel"].strip
    end
  end
end

find_hotel = FindHotel.new("./hotels.csv")
find_hotel.find_hotel_names