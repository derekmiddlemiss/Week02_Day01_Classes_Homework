class Student

  def initialize(name,cohort)
    @name = name
    @cohort = cohort
  end

  def get_name()
    return @name
  end

  def get_cohort()
    return @cohort
  end

  def set_name(name)
    @name = name
  end

  def set_cohort(cohort)
      @cohort = cohort
  end

  def talk()
    return "My name is #{@name}, how are you?"
  end

  def say_favourite_language(language)
    return "My favourite language is #{language}"
  end

end

class SportsTeam

  attr_reader :name, :players , :points
  attr_accessor :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

#  def get_name()
#    return @name
#  end

#  def get_players()
#    return @players
#  end

#  def get_coach()
#    return @coach
#  end

#  def new_coach(name)
#    @coach = name
#  end

  def new_player(name)
    @players.push(name)
  end

  def player_in_team?(name)
    return @players.include?(name)
  end

  def match_played(result)
    @points += 1 if ( result.downcase == "win")
  end

end
