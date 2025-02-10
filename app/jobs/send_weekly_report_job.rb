class SendWeeklyReportJob < ApplicationJob
  queue_as :default

  def perform
    User.find_each do |user|
      reports = user.reports.where("created_at >= ?", 1.week.ago).order(:created_at)
      if reports.any?
        content = reports.map(&:content).join("\n\n")
        WeeklyReportMailer.send_report(user, content).deliver_now  # Changed to deliver_now
      else
        WeeklyReportMailer.no_activity_report(user).deliver_now  # Changed to deliver_now
      end
    end
  end
end
