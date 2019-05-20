class Bottles

  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).map {|i| verse(i)}.join("\n")
  end

  def verse(number)
    case number
    when 0
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    when 1
      "#{number_string(number)} #{container(number)} of beer on the wall, " +
      "#{number_string(number)} #{container(number)} of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
    else
      "#{number_string(number)} bottles of beer on the wall, " +
      "#{number_string(number)} bottles of beer.\n" +
      "Take one down and pass it around, " +
      "#{number_string(number-1)} #{container(number-1)} of beer on the wall.\n"
    end
  end

  def number_string(number)
    number
  end

  def container(number = nil)
    if number == 1
    'bottle'
    else
      'bottles'
    end
  end

end
