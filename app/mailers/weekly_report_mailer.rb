class WeeklyReportMailer < ApplicationMailer
  default from: 'aryannegi522@gmail.com'

  def send_report(user, content)
    @user = user
    @content = content
    mail(to: @user.email, subject: 'Your Weekly Activity Report')
  end

  def no_activity_report(user)
    @user = user
    mail(to: @user.email, subject: 'No Activity This Week')
  end
end
