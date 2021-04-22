class DeleteAgendaMailer < ApplicationMailer
  def sendmail_delete_agenda(agenda)
    @agenda = agenda
    mail to: @agenda.team.members.pluck(:email), subject: "アジェンダの削除通知"
  end
end
