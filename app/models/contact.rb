class Contact < MailForm::Base
  attribute :name, validate: true, length: { minimum: 2 }
  attribute :email, validate: /\A[^@\s]+@[^@\s]+\z/i
  attribute :message, validate: true, length: { minimum: 10 }
  attribute :nickname, captcha: true

  def headers
    { subject: "Formulaire de contact",
      to: "fays.jf@gmail.com",
      from: %("#{name}" <#{email}>) }
  end
end
