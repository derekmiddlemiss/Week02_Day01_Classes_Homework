class Library

  def initialize(books)
    @books = books
  end

  def list_books
    return @books
  end

  def detail_single_book(book_title)
    for book in @books
      return book if ( book[:title] == book_title )
    end
#    return @books.select { |book| book[:title] == book_title }
  end

  def rental_detail_single_book(book_title)
    for book in @books
      return book[:rental_details] if ( book[:title] == book_title )
    end
  end 

  def add_book(new_title)
    new_book = {
      title: new_title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books.push(new_book)
  end

  def change_rental_details(title, new_student, new_date)
    for book in @books
      if book[:title] = title
        book[:rental_details][:student_name] = new_student
        book[:rental_details][:date] = new_date
      end
    end
  end
  
end