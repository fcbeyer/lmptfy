class PeterMailer < ActionMailer::Base
  default from: "letmepeterthatforyou@gmail.com"
  
  def email_the_peters(from_email,email_subject,body,to_email)
  	@body = body 
    mail(to: to_email, subject: email_subject, reply_to: to_email.push(from_email))
  end
  
  def email_random_peter(from_email,email_subject,body,to_email)
  	@body = body
  	
    mail(to: to_email, subject: email_subject, reply_to: to_email.push(from_email))
  end
end
