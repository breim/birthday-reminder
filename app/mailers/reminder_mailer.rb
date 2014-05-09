class ReminderMailer < ActionMailer::Base


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.new_post_notification.subject
  #
  def reminder_msg(reminder)
   	@mensagem =  "#{reminder.mensagem}"
 
    #default from: "from@example.com"
    mail to: reminder.destinatario, subject: reminder.assunto, from: "from@example.com"
  end


end
