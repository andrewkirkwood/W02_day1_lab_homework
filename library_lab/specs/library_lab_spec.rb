require('minitest/autorun')
require('minitest/reporters')
require_relative('../library_lab')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


class TestLibrary
  def test_this
  end

  def test_gets_book()
    book = LibraryBooks.new([{
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
      }])
      assert_equal((
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }), 1000000)
      end
end
