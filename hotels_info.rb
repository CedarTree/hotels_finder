
class HotelInfo
  def initialize(info)
    @info = info
  end

  def name
    @info.fetch("Hotel").strip
  end

  def city
    @info.fetch("City").strip
  end

  def phone_number
    @info.fetch("Phone Number").strip
  end

  def vacant
    @info.fetch("Number of Singles").strip + @info.fetch("Number of Doubles").strip
  end

  def output
    puts name
    puts city
    puts phone_number
    puts vacant
  end
end

