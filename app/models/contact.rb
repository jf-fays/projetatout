class Contact < MailForm::Base
  attribute :name, validate: true, length: { minimum: 2 }
  attribute :email, validate: /\A[^@\s]+@[^@\s]+\z/i
  attribute :message, validate: true, length: { minimum: 10 }
  attribute :nickname, captcha: true

  def headers
    { subject: "Formulaire de contact",
      to: Rails.application.credentials.dig(:gmail_smtp, :email_receiver),
      from: %("#{name}" <#{email}>) }
  end
end
