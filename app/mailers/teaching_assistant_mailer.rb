class TeachingAssistantMailer < ActionMailer::Base
  add_template_helper(EmailsHelper)

  default from: %Q["#{FROM_EMAIL_NAME}" <#{FROM_EMAIL}>]
  layout 'mailer'

  def welcome(ta)
    @ta = ta
    mail(to: @ta['email'], subject: "[#{CHAPTER_NAME}] Your TA application has been approved")
  end

  def pending(ta)
    @ta = ta
    attachments['logo.png'] = File.read(Rails.root.join("app/assets/images/circle-gdi-logo.png"))
    mail(to: @ta['email'], subject: "[#{CHAPTER_NAME}] Your TA application has been received")
  end

  def monthly(ta, courses, month)
    @ta = ta
    @courses = courses
    mail(to: @ta['email'], subject: "[#{CHAPTER_NAME}] Upcoming TA opportunities")
  end

  def forgot(ta)
    @ta = ta
    mail(to: @ta['email'], subject: "[#{CHAPTER_NAME}] Here's your private sign up page")
  end
end
