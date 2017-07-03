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

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  def get_name()
    return @name
  end

  def get_players()
    return @players
  end

  def get_coach()
    return @coach
  end






end
