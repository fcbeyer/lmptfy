class PeterMailer < ActionMailer::Base
  default from: "rick.beyer@gmail.com"
  
  def email_the_peters(from_email,email_subject,body)
  	@body = body
    mail(to: "rick.beyer@gmail.com", subject: email_subject, from: from_email)
  end
  
  def email_random_peter(from_email,email_subject,body)
  	@body = body
  	
    mail(to: "rick.beyer@gmail.com", subject: email_subject, from: from_email)
  end
end
