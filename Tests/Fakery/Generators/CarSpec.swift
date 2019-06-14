import Quick
import Nimble
@testable import Fakery

final class CarSpec: QuickSpec {
  override func spec() {
    describe("Car") {
<<<<<<< HEAD
      var cars: Car!
      
      beforeEach {
        let parser = Parser(locale: "en-TEST")
        cars = Car(parser: parser)
      }
      
=======
      var cars: Faker.Car!

      beforeEach {
        let parser = Parser(locale: "en-TEST")
        cars = Faker.Car(parser: parser)
      }

>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6
      describe("#brand") {
        it("returns the correct brand name text") {
          let name = cars.brand()
          expect(name).to(equal("BMW"))
        }
      }
    }
  }
}
