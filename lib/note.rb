class Note
  attr_reader :title, :body

  def initialize(title, body, format_class = NoteFormatter)
    @title = title
    @body = body
    @formatter = format_class.new
  end

  def display
    @formatter.format(self)
  end

end

class NoteFormatter
  # def format(note)
  #   "Title: #{note.title}\n#{note.body}"
  # end
end
