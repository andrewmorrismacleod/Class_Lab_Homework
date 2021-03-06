require('minitest/autorun')
require('minitest/rg')
require_relative('../school')

class TestCodeClan < MiniTest::Test


  def test_student_class
    student = Student.new('Joe', 'E27')
    assert_equal('Joe', student.student_name)
  end

  def test_cohort
    student = Student.new('Joe', 'E27')
    assert_equal('E27', student.cohort)
  end

  def test_set_student_name
    student = Student.new('Joe', 'E27')
    student.set_student_name('Dave')
    assert_equal('Dave', student.student_name)
  end

  def test_cohort
    student = Student.new('Jill', 'E25')
    student.set_cohort('E27')
    assert_equal('E27', student.cohort)
  end

  def test_talk
    student = Student.new('Joe', 'E27')
    assert_equal('I can talk', student.talk)
  end

  def test_favourite_language
    student = Student.new('Jill', 'E25')
    assert_equal('I love Ruby', student.say_favourite_language("Ruby"))
  end


end
