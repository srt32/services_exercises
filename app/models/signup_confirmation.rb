class SignupConfirmation
  def self.create(user)
    params = {
      "full_name" => user.full_name,
      "email" => user.email
    }
    Mailer.welcome_email(params).deliver
  end
end
