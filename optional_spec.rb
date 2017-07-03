require('minitest/autorun')
require_relative('./optional')

class TestHomework < MiniTest::Test

  def setup
    @miskatonic = Library.new( [
      {
        title: "The Necronomicon",
        rental_details: {
          student_name: "Howard P. Lovecraft",
          date: "01/12/1926"
        }
      },
      {
        title: "Unauchsprechlichen Kulten",
        rental_details: {
          student_name: "August Derleth",
          date: "06/06/1927"
        }
      },
      {
        title: "De Vermis Mysteriis",
        rental_details: {
          student_name: "Robert Bloch",
          date: "01/02/1926"
        }
      }
    ] )
  end  

  def test_initialize_library
    assert_equal("The Necronomicon", @miskatonic.list_books[0][:title])
  end

  def test_detail_single_book
    title = "The Necronomicon"
    output = @miskatonic.detail_single_book(title)
    assert_equal("Howard P. Lovecraft",output[:rental_details][:student_name])
  end

  def test_rental_detail_single_book
    title = "De Vermis Mysteriis"
    output = @miskatonic.rental_detail_single_book(title)
    expected = {
          student_name: "Robert Bloch",
          date: "01/02/1926"
    }
    assert_equal(expected, output)
  end

  def test_add_book
    new_title = "The King in Yellow"
    @miskatonic.add_book(new_title)
    assert_equal("The King in Yellow", @miskatonic.list_books[3][:title])
  end

  def test_change_rental_details
    title = "Unauchsprechlichen Kulten"
    new_student = "Brian Lumley"
    new_date = "10/02/1988"
    @miskatonic.change_rental_details(title, new_student, new_date)
    output = @miskatonic.rental_detail_single_book("Unauchsprechlichen Kulten")
    expected = {
      student_name: "Brian Lumley",
      date: "10/02/1988"
    }
    assert_equal(expected, output)
  end 

end     