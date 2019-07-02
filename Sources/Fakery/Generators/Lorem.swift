import Foundation

<<<<<<< HEAD
/*
 Rather than have two generators like sentences(amount:5) and sentences(amount:1..<5), and
 repeating all the generator logic in both places, we're only doing logic in the range version.
 Single value requests are going to punt to the generator with a range of (for example) 5..<6
 
 This extension will convert any Integer "x" to a range of "x to x+1".
 (Range is non-inclusive; x..<y will return any integer from x up to but not including y)
*/
extension Int {
    func convertToRange() -> Range<Int> {
        return self..<(self+1)
    }
}

public final class Lorem: Generator {
=======
extension Faker {
  public final class Lorem: Generator {
>>>>>>> cc9df445328124b7f910771d60f4482f1ed8bdce
    public func word() -> String {
      return generate("lorem.words")
    }
<<<<<<< HEAD
    
    public func words(amount: Int = 3) -> String {
        return randomWords(amount: amount.convertToRange())
    }
    
    public func randomWords(amount: Range<Int> = 3..<5) -> String {
        var words: [String] = []
        
        for _ in 0..<amount.randomElement()! {
            words.append(word())
        }
        
        return words.joined(separator: " ")
=======

    public func words(amount: Int = 3) -> String {
      var words: [String] = []

      for _ in 0..<amount {
        #if swift(>=4.2)
          let char = Character(UnicodeScalar(Int.random(in: 0..<Int.max) % (122-97) + 97)!)
        #else
          let char = Character(UnicodeScalar(arc4random() % (122-97) + 97)!)
        #endif
        chars.append(char)
      }

      return words.joined(separator: " ")
>>>>>>> cc9df445328124b7f910771d60f4482f1ed8bdce
    }

    public func character() -> String {
<<<<<<< HEAD
        return characters(amount: 1)
    }
    
    public func characters(amount: Int = 255) -> String {
        var chars = ""
        
        if amount > 0 {
            for _ in 0..<amount {
                #if swift(>=4.2)
                let char = Character(UnicodeScalar(Int.random(in: 0..<Int.max) % (122-97) + 97)!)
                #else
                let char = Character(UnicodeScalar(arc4random() % (122-97) + 97)!)
                #endif
                chars.append(char)
            }
        }
        
        return chars
    }
    
    public func sentence(wordsAmount: Int = 4) -> String {
        return randomSentence(wordsAmount: wordsAmount.convertToRange())
    }
    
    public func randomSentence(wordsAmount: Range<Int> = 5..<10) -> String {
        var sentence = randomWords(amount: wordsAmount) + "."
        sentence.replaceSubrange(sentence.startIndex...sentence.startIndex,
                                 with: String(sentence[sentence.startIndex]).capitalized)
        return sentence
    }
    
    public func sentences(amount: Int = 3, wordsAmount: Int = 4) -> String {
        return randomSentences(amount: amount.convertToRange(), wordsAmount: wordsAmount.convertToRange())
    }
    
    public func randomSentences(amount: Range<Int> = 1..<4, wordsAmount: Range<Int> = 5..<10) -> String {
        var sentences: [String] = []
        
        for _ in 0..<amount.randomElement()! {
            sentences.append(randomSentence(wordsAmount: wordsAmount))
=======
      return characters(amount: 1)
    }

    public func characters(amount: Int = 255) -> String {
      var chars = ""

      if amount > 0 {
        for _ in 0..<amount {
          #if swift(>=4.2)
          let char = Character(UnicodeScalar(Int.random(in: 0..<Int.max) % (122 - 97) + 97)!)
          #else
          let char = Character(UnicodeScalar(arc4random() % (122-97) + 97)!)
          #endif
          chars.append(char)
>>>>>>> cc9df445328124b7f910771d60f4482f1ed8bdce
        }
      }

      return chars
    }
<<<<<<< HEAD
    
    public func paragraph(sentencesAmount: Int = 3, wordsAmount: Int = 4) -> String {
        return randomSentences(amount: sentencesAmount.convertToRange(), wordsAmount: wordsAmount.convertToRange())
    }
    
    public func randomParagraph(sentencesAmount: Range<Int> = 1..<4, wordsAmount: Range<Int> = 5..<10) -> String {
        return randomSentences(amount: sentencesAmount, wordsAmount: wordsAmount)
    }
    
    public func paragraphs(amount: Int = 3, sentencesAmount: Int = 3, wordsAmount: Int = 4) -> String {
        return randomParagraphs(amount: amount.convertToRange(), sentencesAmount: sentencesAmount.convertToRange(), wordsAmount: wordsAmount.convertToRange())
    }
    
    public func randomParagraphs(amount: Range<Int> = 1..<4, sentencesAmount: Range<Int> = 1..<4, wordsAmount: Range<Int> = 5..<10) -> String {
        var paragraphs: [String] = []
        
        for _ in 0..<amount.randomElement()! {
            paragraphs.append(randomParagraph(sentencesAmount: sentencesAmount, wordsAmount: wordsAmount))
        }
        
        return paragraphs.joined(separator: "\n")
    }
    
=======

    public func sentence(wordsAmount: Int = 4) -> String {
      var sentence = words(amount: wordsAmount) + "."
      sentence.replaceSubrange(sentence.startIndex...sentence.startIndex,
                               with: String(sentence[sentence.startIndex]).capitalized)
      return sentence
    }

    public func sentences(amount: Int = 3) -> String {
      var sentences: [String] = []

      for _ in 0..<amount {
        sentences.append(sentence())
      }

      return sentences.joined(separator: " ")
    }

    public func paragraph(sentencesAmount: Int = 3) -> String {
      return sentences(amount: sentencesAmount)
    }

    public func paragraphs(amount: Int = 3) -> String {
      var paragraphs: [String] = []

      for _ in 0..<amount {
        paragraphs.append(paragraph())
      }

      return paragraphs.joined(separator: "\n")
    }
  }
>>>>>>> cc9df445328124b7f910771d60f4482f1ed8bdce
}
