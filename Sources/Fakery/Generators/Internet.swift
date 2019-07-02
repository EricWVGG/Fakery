import Foundation

extension Faker {
  public final class Internet: Generator {
    private let lorem: Lorem

<<<<<<< HEAD
  public required init(parser: Parser) {
    self.lorem = Lorem(parser: parser)
    super.init(parser: parser)
  }

  public func username(separator: String? = nil) -> String {
    #if swift(>=4.2)
    let lastRandomComponent = Int.random(in: 0..<10000)
    #else
    let lastRandomComponent = arc4random_uniform(10000)
    #endif
    var components: [String] = [
      generate("name.first_name"),
      generate("name.last_name"),
      "\(lastRandomComponent)"
    ]

    let randomCount = components.count - 1
    #if swift(>=4.2)
    let count = Int.random(in: 0..<randomCount) + randomCount
    #else
    let count = Int(arc4random_uniform(UInt32(randomCount)) + UInt32(randomCount))
    #endif
<<<<<<< HEAD
=======
=======
    public required init(parser: Parser) {
      self.lorem = Lorem(parser: parser)
      super.init(parser: parser)
    }
>>>>>>> cc9df445328124b7f910771d60f4482f1ed8bdce

    public func username(separator: String? = nil) -> String {
      #if swift(>=4.2)
      let lastRandomComponent = Int.random(in: 0..<10000)
      #else
      let lastRandomComponent = arc4random_uniform(10000)
      #endif
      var components: [String] = [
        generate("name.first_name"),
        generate("name.last_name"),
        "\(lastRandomComponent)"
      ]

      let randomCount = components.count - 1
      #if swift(>=4.2)
      let count = Int.random(in: 0..<randomCount) + randomCount
      #else
      let count = Int(arc4random_uniform(UInt32(randomCount)) + UInt32(randomCount))
      #endif

      var gap = ""
      if let sep = separator {
        gap = sep
      }

      return components[0..<count].joined(separator: gap)
                                  .replacingOccurrences(of: "'", with: "")
                                  .lowercased()
    }
>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6

    public func domainName(_ alphaNumericOnly: Bool = true) -> String {
      return domainWord(alphaNumericOnly: alphaNumericOnly) + "." + domainSuffix()
    }

    public func domainWord(alphaNumericOnly: Bool = true) -> String {
      let nameParts = generate("company.name").components(separatedBy: " ")
      var name = ""

      if let first = nameParts.first {
        name = first
      } else {
        name = letterify("?????")
      }

      let result = alphaNumericOnly ? alphaNumerify(name) : name

      return result.lowercased()
    }

    public func domainSuffix() -> String {
      return generate("internet.domain_suffix")
    }

    public func email() -> String {
      return [username(), domainName()].joined(separator: "@")
    }

    public func freeEmail() -> String {
      return [username(), generate("internet.free_email")].joined(separator: "@")
    }

    public func safeEmail() -> String {
      let topLevelDomains = ["org", "com", "net"]
      #if swift(>=4.2)
      let topLevelDomain = topLevelDomains.randomElement() ?? ""
      #else
      let count = UInt32(topLevelDomains.count)
      let topLevelDomain = topLevelDomains[Int(arc4random_uniform(count))]
      #endif

<<<<<<< HEAD
  public func safeEmail() -> String {
    let topLevelDomains = ["org", "com", "net"]
    #if swift(>=4.2)
    let topLevelDomain = topLevelDomains.randomElement() ?? ""
    #else
    let count = UInt32(topLevelDomains.count)
    let topLevelDomain = topLevelDomains[Int(arc4random_uniform(count))]
    #endif
<<<<<<< HEAD

    return [username(), "example." + topLevelDomain].joined(separator: "@")
  }

  public func password(minimumLength: Int = 8, maximumLength: Int = 16) -> String {
    var temp = lorem.characters(amount: minimumLength)
    let diffLength = maximumLength - minimumLength

=======
=======
      return [username(), "example." + topLevelDomain].joined(separator: "@")
    }
>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6

    public func password(minimumLength: Int = 8, maximumLength: Int = 16) -> String {
      var temp = lorem.characters(amount: minimumLength)
      let diffLength = maximumLength - minimumLength

      if diffLength > 0 {
        #if swift(>=4.2)
        let diffRandom = Int.random(in: 0..<diffLength + 1)
        #else
        let diffRandom = Int(arc4random_uniform(UInt32(diffLength + 1)))
        #endif
        temp += lorem.characters(amount: diffRandom)
      }

<<<<<<< HEAD
>>>>>>> cc9df445328124b7f910771d60f4482f1ed8bdce
    if diffLength > 0 {
      #if swift(>=4.2)
      let diffRandom = Int.random(in: 0..<diffLength + 1)
      #else
      let diffRandom = Int(arc4random_uniform(UInt32(diffLength + 1)))
      #endif
      temp += lorem.characters(amount: diffRandom)
    }

    return temp
  }

  public func ipV4Address() -> String {
    #if swift(>=4.2)
    let randomNumber = UInt32.random(in: 0..<UInt32.max) % 253
    #else
    let randomNumber = arc4random() % 253
    #endif
    let ipRand = {
      2 + randomNumber
<<<<<<< HEAD
=======
=======
      return temp
>>>>>>> cc9df445328124b7f910771d60f4482f1ed8bdce
    }

    public func ipV4Address() -> String {
      #if swift(>=4.2)
      let randomNumber = UInt32.random(in: 0..<UInt32.max) % 253
      #else
      let randomNumber = arc4random() % 253
      #endif
      let ipRand = {
        2 + randomNumber
      }

      return String(format: "%d.%d.%d.%d", ipRand(), ipRand(), ipRand(), ipRand())
>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6
    }

    public func ipV6Address() -> String {
      #if swift(>=4.2)
      let randomNumber = UInt32.random(in: 0..<UInt32.max) % 65536
      #else
      let randomNumber = arc4random() % 65536
      #endif

<<<<<<< HEAD
  public func ipV6Address() -> String {
    #if swift(>=4.2)
    let randomNumber = UInt32.random(in: 0..<UInt32.max) % 65536
    #else
    let randomNumber = arc4random() % 65536
    #endif

    var components: [String] = []

    for _ in 0..<8 {
      components.append(String(format: "%X", randomNumber))
    }
=======
      var components: [String] = []

      for _ in 0..<8 {
        components.append(String(format: "%X", randomNumber))
      }
>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6

      return components.joined(separator: ":")
    }

    public func url() -> String {
      return "https://\(domainName())/\(username())"
    }

    public func image(width: Int = 320, height: Int = 200) -> String {
      return "https://lorempixel.com/\(width)/\(height)"
    }

    public func templateImage(width: Int = 320, height: Int = 200,
                              backColorHex: String = "000000", frontColorHex: String = "ffffff") -> String {
      return "https://dummyimage.com/\(width)x\(height)/\(backColorHex)/\(frontColorHex)"
    }

    public func hashtag() -> String {
      return generate("internet.hashtag")
    }

    // @ToDo - slug
  }
}
