import Quick
import Nimble
@testable import Fakery

final class VehicleSpec: QuickSpec {
  override func spec() {
    describe("Vehicle") {
<<<<<<< HEAD
      var vehicle: Vehicle!

      beforeEach {
        let parser = Parser(locale: "en-TEST")
        vehicle = Vehicle(parser: parser)
=======
      var vehicle: Faker.Vehicle!

      beforeEach {
        let parser = Parser(locale: "en-TEST")
        vehicle = Faker.Vehicle(parser: parser)
>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6
      }

      describe("#manufacture") {
        it("returns the correct manufacture") {
          let manufacture = vehicle.manufacture()
          expect(manufacture).to(equal("Volkswagen"))
        }
      }

      describe("#make") {
        it("returns the correct make") {
          let make = vehicle.make()
          expect(make).to(equal("BMW"))
        }
      }

      describe("#colors") {
        it("returns the correct color") {
          let color = vehicle.colors()
          expect(color).to(equal("Red"))
        }
      }
    }
  }
}
