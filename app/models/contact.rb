class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :to_email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :from_email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => %(#{name} invited you to check out The Daily Water Cooler),
      :to => %(#{to_email}),
      :from => %("#{name}" <#{from_email}>)
    }
  end
end