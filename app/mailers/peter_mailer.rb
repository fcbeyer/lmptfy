class PeterMailer < ActionMailer::Base
  default from: "rick.beyer@gmail.com"
  
  def email_the_peters(from_email,email_subject,body,to_email)
  	@body = body
    mail(to: to_email, subject: email_subject, from: [from_email,"letmptfy@gmail.com"])
  end
  
  def email_random_peter(from_email,email_subject,body,to_email)
  	@body = body
  	
    mail(to: to_email, subject: email_subject, from: [from_email,"letmptfy@gmail.com"])
  end
end
