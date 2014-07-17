class Hotel
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

  def rooms
    @info.fetch("Number of Singles").to_i + @info.fetch("Number of Doubles").to_i
  end

  def output
    puts name
    puts city
    puts phone_number
    puts rooms
  end
end