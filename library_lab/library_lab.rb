class LibraryBooks

  attr_accessor :title, :rental_details, :student_name, :date
  def initialize(books)
    @books = books
    # @rental_details = rental_details[@student_name, @date]
  end

  def gets_book
    return 0
  end
end
