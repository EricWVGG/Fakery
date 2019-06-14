import Foundation

public final class Faker {
  public var locale: String {
    didSet {
      if locale != oldValue {
        parser.locale = locale
      }
    }
  }

  public let address: Address
  public let app: App
  public let zelda: Zelda
  public let business: Business
  public let cat: Cat
  public let company: Company
  public let commerce: Commerce
  public let gender: Gender
  public let internet: Internet
  public let lorem: Lorem
  public let name: Name
  public let phoneNumber: PhoneNumber
  public let team: Team
  public let number: Number
  public let bank: Bank
  public let date: Date
<<<<<<< HEAD
=======
  public let hobbit: Hobbit
>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6
  public let car: Car
  public let programmingLanguage: ProgrammingLanguage
  public let vehicle: Vehicle
  public let ham: Ham
<<<<<<< HEAD
=======
  public let house: House
>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6

  let parser: Parser

  // MARK: - Initialization

  public init(locale: String = Config.defaultLocale) {
    self.locale = locale
    parser = Parser(locale: self.locale)
    address = Address(parser: parser)
    app = App(parser: parser)
    zelda = Zelda(parser: parser)
<<<<<<< HEAD
    business = Business(parser: parser)
    cat = Cat(parser: parser)
    company = Company(parser: parser)
    commerce = Commerce(parser: parser)
    gender = Gender(parser: parser)
    internet = Internet(parser: parser)
    lorem = Lorem(parser: parser)
    name = Name(parser: parser)
    phoneNumber = PhoneNumber(parser: parser)
    team = Team(parser: parser)
    number = Number()
    bank = Bank(parser: parser)
    date = Date()
    car = Car(parser: parser)
    programmingLanguage = ProgrammingLanguage(parser: parser)
    vehicle = Vehicle(parser: parser)
    ham = Ham(parser: parser)
  }

  public init(locale: String, localeData: Data) {
    self.locale = locale
    parser = Parser(locale: locale, localeData: localeData)
    address = Address(parser: parser)
    app = App(parser: parser)
    zelda = Zelda(parser: parser)
=======
>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6
    business = Business(parser: parser)
    cat = Cat(parser: parser)
    company = Company(parser: parser)
    commerce = Commerce(parser: parser)
    gender = Gender(parser: parser)
    internet = Internet(parser: parser)
    lorem = Lorem(parser: parser)
    name = Name(parser: parser)
    phoneNumber = PhoneNumber(parser: parser)
    team = Team(parser: parser)
    number = Number()
    bank = Bank(parser: parser)
    date = Date()
<<<<<<< HEAD
=======
    hobbit = Hobbit(parser: parser)
>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6
    car = Car(parser: parser)
    programmingLanguage = ProgrammingLanguage(parser: parser)
    vehicle = Vehicle(parser: parser)
    ham = Ham(parser: parser)
<<<<<<< HEAD
=======
    house = House(parser: parser)
>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6
  }

}
