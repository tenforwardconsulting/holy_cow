# HolyCow

Dead simple notification when people do things on your site

## Installation

Add this line to your application's Gemfile:

    gem 'holy_cow'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install holy_cow

## Usage

### Recipients
    
    HolyCow.recipient "my@emailaddress.com"
    HolyCow.recipients "me@email.com", "you@email.com"

### From Address

    HolyCow.from_address "me@example.com"

### Sending notifications

Just call holy_cow with a subject line and you'll get an e-mail. You can pass extra parameters and they'll be included as well. Go nuts!

    holy_cow "somebody actually clicked that button!"
    holy_cow "a user changed their avatar", current_user
    holy_cow "the database is down", ex.message

### SMTP configuration

HolyCow uses action_mailer, so it will use whatever e-mail sending you have configured or try and use sendmail/local delivery if you don't have anything set up. 


## Contributing

1. Fork it ( http://github.com/<my-github-username>/holy_cow/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
