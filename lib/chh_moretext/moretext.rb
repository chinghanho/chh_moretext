module ChhMoretext
  class Moretext < Base
    class << self
      def sentence(sentence_length_range = nil)
        fetch_moretext(1, sentence_length_range)[0]
      end

      def sentences(sentence_count = 1, sentence_length_range = nil)
        fetch_moretext(sentence_count, sentence_length_range).join("")
      end

      def paragraph(sentence_count = 3)
        sentences(sentence_count)
      end

      def paragraphs(paragraph_count = 3)
        [].tap { |paragraphs|
          paragraph_count.times { paragraphs << paragraph }
          }.join("\r\n\r\n")
      end
    end
  end
end
