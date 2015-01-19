# Feel free to delete the instructions once you get going
puts instructions(__FILE__)

class Bottles
  def verse(line)

    <<-VERSE
#{bottle_text(line).capitalize} of beer on the wall, #{bottle_text(line)} of beer.
Take #{one_text(line)} down and pass it around, #{bottle_text(line - 1)} of beer on the wall.
    VERSE
  end

#No more bottles of beer on the wall, no more bottles of beer.
#Go to the store and buy some more, 99 bottles of beer on the wall.

  private

  def bottle_text(num)
    case num
    when 0
      "no more bottles"
    when 1
      "1 bottle"
    else
      "#{num} bottles"
    end
  end

  def one_text(num)
    case num
      when 1
        "it"
      else
        "one"
    end
  end

end
