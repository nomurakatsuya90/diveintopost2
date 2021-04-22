class ChangeOwnerMailer < ApplicationMailer
  def sendmail_change_owner(user)
    @user = user
    mail to: @user.email, subject: "オーナー権限の移行通知"
  end
end
