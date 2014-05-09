class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :assunto
      t.text :mensagem
      t.string :destinatario
      t.date :aniversario

      t.timestamps
    end
  end
end
