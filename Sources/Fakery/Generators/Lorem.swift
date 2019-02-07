import Foundation

public final class Lorem: Generator {
    public func word() -> String {
        return generate("lorem.words")
    }
    
    public func words(_ amount: Int = 3) -> String {
        var words: [String] = []
        
        for _ in 0..<amount {
            words.append(word())
        }
        
        return words.joined(separator: " ")
    }
    
    public func character() -> String {
        return characters(1)
    }
    
    public func characters(_ amount: Int = 255) -> String {
        var chars = ""
        
        if amount > 0 {
            for _ in 0..<amount {
                let char = Character(UnicodeScalar(arc4random() % (122-97) + 97)!)
                chars.append(char)
            }
        }
        
        return chars
    }
    
    public func sentence(_ wordsAmount: Int = 4) -> String {
        var sentence = words(wordsAmount) + "."
        sentence.replaceSubrange(sentence.startIndex...sentence.startIndex,
                                 with: String(sentence[sentence.startIndex]).capitalized)
        return sentence
    }
    
    public func sentences(_ amount: Int = 3, wordsAmount: Int = 4) -> String {
        var sentences: [String] = []
        
        for _ in 0..<amount {
            sentences.append(sentence(wordsAmount))
        }
        
        return sentences.joined(separator: " ")
    }
    
    public func paragraph(_ sentencesAmount: Int = 3, wordsAmount: Int = 4) -> String {
        return sentences(sentencesAmount, wordsAmount: wordsAmount)
    }
    
    public func paragraphs(_ amount: Int = 3, sentencesAmount: Int = 3, wordsAmount: Int = 4, lineBreakBetween: Bool = false) -> String {
        var paragraphs: [String] = []
        for _ in 0..<amount {
            paragraphs.append(paragraph(sentencesAmount, wordsAmount: wordsAmount))
        }
        let separator: String = (lineBreakBetween) ? "\n\n" : "\n"
        return paragraphs.joined(separator: separator)
    }
    
    public func paragraphsRandom(_ amount: Range<Int> = 3..<10, sentencesAmount: Range<Int> = 1..<10, wordsAmount: Range<Int> = 5..<16, lineBreakBetween: Bool = false) -> String{
        return paragraphs(
            amount.randomElement()!,
            sentencesAmount: sentencesAmount.randomElement()!,
            wordsAmount: wordsAmount.randomElement()!,
            lineBreakBetween: lineBreakBetween
        )
    }
}

