class Reminder < ActiveRecord::Base

	def self.automatic
		reminder = Reminder.where("extract(month from aniversario) = ? AND extract(day from aniversario) = ?", Date.today.strftime('%m'), Date.today.strftime('%d'))

		reminder.each do |reminder|
			ReminderMailer.delay.reminder_msg(reminder)
		end
	end |


end
