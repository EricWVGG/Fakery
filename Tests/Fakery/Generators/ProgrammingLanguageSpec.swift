import Quick
import Nimble
@testable import Fakery

final class ProgrammingLanguageSpec: QuickSpec {
  override func spec() {
    describe("Programming Language") {
<<<<<<< HEAD
      var language: ProgrammingLanguage!

      beforeEach {
        let parser = Parser(locale: "en-TEST")
        language = ProgrammingLanguage(parser: parser)
=======
      var language: Faker.ProgrammingLanguage!

      beforeEach {
        let parser = Parser(locale: "en-TEST")
        language = Faker.ProgrammingLanguage(parser: parser)
>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6
      }

      describe("#name") {
        it("returns the correct text") {
          let name = language.name()
          expect(name).to(equal("Elixir"))
        }
      }
<<<<<<< HEAD
      
=======

>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6
      describe("#creator") {
        it("returns the correct text") {
          let name = language.creator()
          expect(name).to(equal("José Valim"))
        }
      }
    }
  }
}
