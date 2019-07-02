import Quick
import Nimble
@testable import Fakery

final class HamSpec: QuickSpec {
  override func spec() {
    describe("Ham") {
<<<<<<< HEAD
      var ham: Ham!

      beforeEach {
        let parser = Parser(locale: "en-TEST")
        ham = Ham(parser: parser)
=======
      var ham: Faker.Ham!

      beforeEach {
        let parser = Parser(locale: "en-TEST")
        ham = Faker.Ham(parser: parser)
>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6
      }

      describe("#name") {
        it("returns the correct text") {
          let name = ham.name()
          expect(name).to(equal("Smithfield Ham"))
        }
      }
    }
  }
}
