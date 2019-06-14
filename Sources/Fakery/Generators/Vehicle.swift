<<<<<<< HEAD
public final class Vehicle: Generator {
  public func manufacture() -> String {
    return generate("vehicle.manufacture")
  }

  public func make() -> String {
    return generate("vehicle.makes")
  }
  
  public func colors() -> String {
    return generate("vehicle.colors")
=======
extension Faker {
  public final class Vehicle: Generator {
    public func manufacture() -> String {
      return generate("vehicle.manufacture")
    }

    public func make() -> String {
      return generate("vehicle.makes")
    }

    public func colors() -> String {
      return generate("vehicle.colors")
    }
>>>>>>> 92d714d5b6626f629e3dccc79963f3ca8b1678d6
  }
}
