require('minitest/autorun')
require('minitest/reporters')
require_relative('../student_lab')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudentLab < MiniTest::Test

  def test_returns_a_name
    student = Student.new("John", "e36", "JS")
    student.name()
    assert_equal("John", student.name)
  end

  def test_returns_cohort
    student = Student.new("Steven", "e30", "Java")
    student.cohort
    assert_equal("e30", student.cohort)
  end

  def test_sets_student_name
    student = Student.new("Steven", "e30", "Java")
    student.name = "Greg"
    assert_equal("Greg", student.name())
  end

  def test_sets_cohort
    student = Student.new("Steven", "e30", "Java")
    student.cohort = "e50"
    assert_equal("e50", student.cohort())
  end

  def test_student_talks
    student = Student.new("Jessica", "e20", "Python")
    assert_equal("I can talk!", student.talks)
  end

  def test_return_students_fav_language
    student = Student.new("Jessica", "e20", "ruby")
assert_equal("My favorite language is ruby", student.print_fav_language)
  end
end

# new class - Team

# def test_returns_cohort
#   student = Student.new("Steven", "e30", "Java")
#   student.cohort
#   assert_equal("e30", student.cohort)
# end

# def test_recording_a_name
# end
