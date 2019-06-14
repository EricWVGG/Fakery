import Foundation

<<<<<<< HEAD
public final class Cat: Generator {
  public func name() -> String {
    return generate("cat.name")
  }

  public func breed() -> String {
    return generate("cat.breed")
  }

  public func registry() -> String {
    return generate("cat.registry")
=======
extension Faker {
  public final class Cat: Generator {
    public func name() -> String {
      return generate("cat.name")
    }

    public func breed() -> String {
      return generate("cat.breed")
    }

    public func registry() -> String {
      return generate("cat.registry")
    }
>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6
  }
}
