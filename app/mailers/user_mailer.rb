class UserMailer < ActionMailer::Base
  default from: 'contact@elogictech.com'
 
  def welcome_email(user)
    @user = user
        attachments["rails.png"] = File.read("#{Rails.root}/public/rails.png")
        attachments["test.pdf"] = File.read("#{Rails.root}/public/test.pdf")
    @url  = 'http://www.elogictech.com/'
   mail(to: user.email,
         bcc: 'saikiran@elogictechsolutions.com',
         subject: 'Welcome to eLogic Technologies') do |format|
    format.text(content_transfer_encoding: "base64")
    format.html
    end
  end  
end

