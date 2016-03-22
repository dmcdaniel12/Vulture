#!/usr/bin/ruby
class Email

  def sendMail()
    # This will send out the email via Outlook when completed and website is down
    outlook = WIN32OLE.new('Outlook.Application')
    message = outlook.CreateItem(0)
    message.Subject = ""
    message.Body = ""
    message.Recipients.Add 'email'
    message.Send
  end

end