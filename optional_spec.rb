require('minitest/autorun')
require_relative('./homework')

class TestHomework < MiniTest::Test

  def test_initialize_Library
    miskatonic_library = Library.new( [
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
    print miskatonic_library.list_books().class
  end

end     