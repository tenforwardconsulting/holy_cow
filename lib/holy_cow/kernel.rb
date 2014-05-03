module Kernel
  def holy_cow(*args)
    HolyCow::Mailer.notification(*args).deliver
  end
end
