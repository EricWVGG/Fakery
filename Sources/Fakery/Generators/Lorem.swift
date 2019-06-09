import Foundation

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
    public func word() -> String {
        return generate("lorem.words")
    }
    
    public func words(amount: Int = 3) -> String {
        return randomWords(amount: amount.convertToRange())
    }
    
    public func randomWords(amount: Range<Int> = 3..<5) -> String {
        var words: [String] = []
        
        for _ in 0..<amount.randomElement()! {
            words.append(word())
        }
        
        return words.joined(separator: " ")
    }
    
    public func character() -> String {
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
        return sentence(wordsAmount: wordsAmount.convertToRange())
    }
    
    public func sentence(wordsAmount: Range<Int>) -> String {
        var sentence = randomWords(amount: wordsAmount) + "."
        sentence.replaceSubrange(sentence.startIndex...sentence.startIndex,
                                 with: String(sentence[sentence.startIndex]).capitalized)
        return sentence
    }
    
    public func sentences(amount: Int = 3, wordsAmount: Int = 4) -> String {
        return sentences(amount: amount.convertToRange(), wordsAmount: wordsAmount.convertToRange())
    }
    
    public func sentences(amount: Range<Int>, wordsAmount: Range<Int>) -> String {
        var sentences: [String] = []
        
        for _ in 0..<amount.randomElement()! {
            sentences.append(sentence(wordsAmount: wordsAmount))
        }
        
        return sentences.joined(separator: " ")
    }
    
    public func paragraph(sentencesAmount: Int = 3, wordsAmount: Int = 4) -> String {
        return sentences(amount: sentencesAmount.convertToRange(), wordsAmount: wordsAmount.convertToRange())
    }
    
    public func paragraph(sentencesAmount: Range<Int>, wordsAmount: Range<Int>) -> String {
        return sentences(amount: sentencesAmount, wordsAmount: wordsAmount)
    }
    
    public func paragraphs(amount: Int = 3, sentencesAmount: Int = 3, wordsAmount: Int = 4) -> String {
        return paragraphs(amount: amount.convertToRange(), sentencesAmount: sentencesAmount.convertToRange(), wordsAmount: wordsAmount.convertToRange())
    }
    
    public func paragraphs(amount: Range<Int>, sentencesAmount: Range<Int>, wordsAmount: Range<Int>) -> String {
        var paragraphs: [String] = []
        
        for _ in 0..<amount.randomElement()! {
            paragraphs.append(paragraph(sentencesAmount: sentencesAmount, wordsAmount: wordsAmount))
        }
        
        return paragraphs.joined(separator: "\n")
    }
    
}
