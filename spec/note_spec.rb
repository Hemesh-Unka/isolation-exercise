require 'note'

describe Note do

  describe '#display' do
    it 'displays itself' do
      title = "Title"
      body = "Body"
      fake_note_formatter = double(:format => "Title: #{title}\n#{body}")

      fake_note_formatter_class = double(:new => fake_note_formatter)

      note = Note.new("Title", "Body", fake_note_formatter_class)

      expect(note.display).to eq "Title: Title\nBody"
    end
  end
end
