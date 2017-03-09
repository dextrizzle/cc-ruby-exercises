class Book
  attr_accessor :title
  attr_accessor :chapters
  def initialize
    @chapters = []
    @title = ""
  end
  def chapters

    if @chapters.length
      puts "your book: #{title} has #{@chapters.length} chapters"
      @chapters.each_with_index do |x,y|
        puts "#{y+1}: #{x}"
      end
    else
      puts 'there\'s no chapters in your book!'
    end
  end
  def add_chapter(chapter)
    @chapters << chapter
  end
end

book = Book.new
book.title = 'my awesome book'
book.add_chapter("My Awesome Chapter 1")
book.add_chapter("My Awesome Chapter 2")
book.chapters
