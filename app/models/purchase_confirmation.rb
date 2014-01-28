class PurchaseConfirmation

  def self.create(order)
    Mailer.order_confirmation(order).deliver
  end

end
