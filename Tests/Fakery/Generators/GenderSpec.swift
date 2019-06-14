import Quick
import Nimble
@testable import Fakery

final class GenderSpec: QuickSpec {
  override func spec() {
    describe("Gender") {
<<<<<<< HEAD
      var gender: Gender!
      
      beforeEach {
        let parser = Parser(locale: "en-TEST")
        gender = Gender(parser: parser)
      }
      
=======
      var gender: Faker.Gender!

      beforeEach {
        let parser = Parser(locale: "en-TEST")
        gender = Faker.Gender(parser: parser)
      }

>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6
      describe("#type") {
        it("returns the correct text") {
          let type = gender.type()
          expect(type).to(equal("Non-binary"))
        }
      }
<<<<<<< HEAD
      
=======

>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6
      describe("#binary_type") {
        it("returns the correct text") {
          let binaryType = gender.binaryType()
          expect(binaryType).to(equal("Male"))
        }
      }
    }
  }
}
