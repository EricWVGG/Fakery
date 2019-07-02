import Quick
import Nimble
@testable import Fakery

final class ZeldaSpec: QuickSpec {
  override func spec() {
    describe("Zelda") {
<<<<<<< HEAD
      var zelda: Zelda!

      beforeEach {
        let parser = Parser(locale: "en-TEST")
        zelda = Zelda(parser: parser)
=======
      var zelda: Faker.Zelda!

      beforeEach {
        let parser = Parser(locale: "en-TEST")
        zelda = Faker.Zelda(parser: parser)
>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6
      }

      describe("#game") {
        it("returns the correct text") {
          let game = zelda.game()
          expect(game).to(equal("Ocarina of Time"))
        }
      }
    }
  }
}
