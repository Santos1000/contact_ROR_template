class Contact < MailForm::Base
  attribute :name,      validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  captcha: true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  # changing "your.email@address.com" to the address you wish for the form to send to:
  def headers
    {
      :subject => "Contact Form Inquiry",
      :to => "barbara.contato.008@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
