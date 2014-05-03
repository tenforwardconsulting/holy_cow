require "holy_cow/version"
require "holy_cow/kernel" 
require "holy_cow/mailer"

module HolyCow
  @@recipient_list = []
  @@from_address = "noreply@example.com"
  # Your code goes here...
  def self.recipient(addr)
    @@recipient_list << addr
  end

  def self.recipients(*args)
    if (args)
      @@recipient_list += args.flatten
    end
    @@recipient_list
  end

  def self.from_address
    @@from_address
  end

  def self.from_address=(addr)
    @@from_address = addr
  end
end
