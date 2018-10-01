ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

# A first place vote is worth 3 points, a 2nd place vote is worth 2 points, and a 3rd place vote is worth 1 point.

def unique_names(ballots)

# finding unique values
hh_unique_names = []
  ballots.each do |ballot|
    ballot.each do |place, name|
      if hh_unique_names.include?(name) == false
        hh_unique_names << name
      end
    end
  end
# populating the hash with unique names
  hh_winner = Hash.new
  hh_unique_names.each do |unique_name|
  points = 0
    ballots.each do |ballot|
      ballot.each do |place, name|
        if name == unique_name
          case place
          when 1 then points += 3
          when 2 then points += 2
          when 3 then points += 1
          end
        end
      end
    end
    hh_winner[unique_name] = points
  end
    puts hh_winner
    print "And the winner is...#{hh_winner.key(hh_winner.values.max)} with #{hh_winner.values.max} points!!!"
end

puts unique_names(ballots)
