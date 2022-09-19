<strong>Testing locally</strong>

At this point, we should have a fully functional contact form in our local environment. You can confirm this by submitting the form (leaving the nickname field blank), and checking the server logs to ensure the mail is sent.

I like to do a little more testing locally, just to ensure everything works as expected. For this, I use mailcatcher. Install it with gem install mailcatcher.

Add these to config/environments/development.rb:

config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = { :address => '127.0.0.1', :port => 1025 }
config.action_mailer.raise_delivery_errors = false
Now another terminal window and run the simple command mailcatcher to start it, then pasting this http://127.0.0.1:1080/ into your browser to show a virtual inbox with all your outgoing mail! Note: you'll need to restart your rails server for this to take effect.

Try submitting your contact form again to see the outbound mail appear in mailcatcher. Once that works, it's time to take this functional form on to the web!


https://gist.github.com/stevecondylios/16a53b73f22621e3cde2e17096dbf5ca
