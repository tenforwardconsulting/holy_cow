require 'action_mailer'
require 'pp'
ActionMailer::Base.append_view_path File.join(File.dirname(__FILE__), "..")
class HolyCow::Mailer < ActionMailer::Base
  def notification(*args)
    @subject = args.shift || "Somebody did something!"
    @things = args || []
    mail({
      from: HolyCow::from_address, 
      to: HolyCow::recipients, 
      subject: "[Holy Cow] #{@subject}"
    }) do |format|
      format.html
      format.text
    end
  end
end