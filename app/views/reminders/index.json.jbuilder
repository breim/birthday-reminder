json.array!(@reminders) do |reminder|
  json.extract! reminder, :id, :assunto, :mensagem, :destinatario, :aniversario
  json.url reminder_url(reminder, format: :json)
end
