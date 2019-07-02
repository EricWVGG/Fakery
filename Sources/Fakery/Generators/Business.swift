import Foundation

extension Faker {
  public final class Business: Generator {
    public func creditCardNumber() -> String {
      return generate("business.credit_card_numbers")
    }

    public func creditCardType() -> String {
      return generate("business.credit_card_types")
    }

<<<<<<< HEAD
  public func creditCardExpiryDate() -> Foundation.Date? {
    let dateString = generate("business.credit_card_expiry_dates")
    return dateFormatter.date(from: dateString)
=======
    public func creditCardExpiryDate() -> Foundation.Date? {
      let dateString = generate("business.credit_card_expiry_dates")
      return dateFormatter.date(from: dateString)
    }
>>>>>>> cc9df445328124b7f910771d60f4482f1ed8bdce
  }
}
