import Foundation

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
        var words: [String] = []
        
        for _ in 0..<amount {
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
        return randomSentence(wordsAmount: wordsAmount.convertToRange())
    }
    
    public func randomSentence(wordsAmount: Range<Int> = 5..<10) -> String {
        var sentence = words(amount: wordsAmount.randomElement()!) + "."
        sentence.replaceSubrange(sentence.startIndex...sentence.startIndex,
                                 with: String(sentence[sentence.startIndex]).capitalized)
        return sentence
    }
    
    public func sentences(amount: Int = 3, wordsAmount: Int = 4) -> String {
        return randomSentences(amount: amount.convertToRange(), wordsAmount: wordsAmount.convertToRange())
    }
    
    public func randomSentences(amount: Range<Int> = 1..<4, wordsAmount: Range<Int> = 1..<5) -> String {
        var sentences: [String] = []
        
        for _ in 0..<amount.randomElement()! {
            sentences.append(randomSentence(wordsAmount: wordsAmount))
        }
        
        return sentences.joined(separator: " ")
    }
    
    public func paragraph(sentencesAmount: Int = 3, wordsAmount: Int = 4) -> String {
        return randomSentences(amount: sentencesAmount.convertToRange(), wordsAmount: wordsAmount.convertToRange())
    }
    
    public func paragraphs(amount: Int = 3, sentencesAmount: Int = 3, wordsAmount: Int = 4) -> String {
        return randomParagraphs(amount: amount.convertToRange(), sentencesAmount: sentencesAmount.convertToRange(), wordsAmount: wordsAmount.convertToRange())
    }
    
    public func randomParagraphs(amount: Range<Int> = 1..<4, sentencesAmount: Range<Int> = 1..<4, wordsAmount: Range<Int> = 1..<5) -> String {
        var paragraphs: [String] = []
        
        for _ in 0..<amount.randomElement()! {
            paragraphs.append(randomSentences(amount: sentencesAmount, wordsAmount: wordsAmount))
        }
        
        return paragraphs.joined(separator: "\n")
    }
    
}
