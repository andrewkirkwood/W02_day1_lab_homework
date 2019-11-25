require('minitest/autorun')
require('minitest/reporters')
require_relative('../student_lab')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBankAccount < MiniTest::Test



  def test_returns_a_name
    student = Student.new("John", "e36")
    student.name()
    assert_equal("John", student.name)
  end

  def test_returns_cohort
    student = Student.new("Steven", "e30")
    student.cohort
    assert_equal("e30", student.cohort)
  end

  # def test_recording_a_name
  # end
end