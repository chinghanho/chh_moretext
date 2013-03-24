require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

module ChhMoretext
  class Base
    class << self
      WORD = "測"

      def fetch_moretext(number, limit)
        limit = 1 unless limit != nil
        [WORD * limit] * number
      end
    end
  end
end

class TestMoretext < Test::Unit::TestCase
  def setup
    @tester = ChhMoretext::Moretext
  end

  def test_sentence
    assert @tester.sentence(5) == ["測測測測測"]
  end

  def test_sentences
    assert @tester.sentences(2, 5) == "測測測測測測測測測測"
  end

  def test_paragraph
    assert @tester.paragraph(5) == "測測測測測"
  end

  def test_paragraphs
    assert @tester.paragraphs(3) == "測測測\r\n\r\n測測測\r\n\r\n測測測"
  end
end
