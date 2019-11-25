class Student

# attr_accessor :name, :cohort
attr_reader :name, :cohort, :fav_language
attr_writer :name, :cohort

  def initialize(name, cohort, fav_language)
    @name = name
    @cohort = cohort
    @fav_language = fav_language
  end

  def talks
    return "I can talk!"
  end

  def print_fav_language
    return "My favorite language is #{@fav_language}"
  end

end
