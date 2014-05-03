require 'action_mailer'
require 'pp'
class HolyCow::Mailer < ActionMailer::Base
  def notification(*args)
    @subject = args.shift || "Somebody did something!"
    template = File.join(File.dirname(__FILE__), "mailer", "notification.html.erb")
    body = ERB.new(File.read(template))
    @things = args || []
    mail({
      from: HolyCow::from_address, 
      to: HolyCow::recipients, 
      subject: "[Holy Cow] #{@subject}", 
      body: body.result(binding),
      content_type: "text/html"
    })
  end
end