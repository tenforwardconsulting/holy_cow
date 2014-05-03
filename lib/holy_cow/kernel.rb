module Kernel
  def holy_cow(*args)
    
    if defined? Delayed::Job
      HolyCow::Mailer.delay.notification(*args)
    else
      HolyCow::Mailer.notification(*args).deliver
    end

  end
end
