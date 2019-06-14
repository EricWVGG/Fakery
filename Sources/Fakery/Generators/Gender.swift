import Foundation

<<<<<<< HEAD
public final class Gender: Generator {
  public func type() -> String {
    return generate("gender.type")
  }
  
  public func binaryType() -> String {
    return generate("gender.binary_type")
=======
extension Faker {
  public final class Gender: Generator {
    public func type() -> String {
      return generate("gender.type")
    }

    public func binaryType() -> String {
      return generate("gender.binary_type")
    }
>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6
  }
}
