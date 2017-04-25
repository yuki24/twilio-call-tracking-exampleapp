## Call tracking example app

This app lets you acquire a phone number and assign your personal phone number to the number you purhased.
If a phone call is made to the phone number that was purchased through this app, this app will forward the
call to your personal phone number. It also tracks ang logs all incoming calls and call statuses 
(e.g. answered or not).

## Deployment to heroku

You can deploy this app to Heroku by just clicking the button below:

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/yuki24/twilio-call-tracking-exampleapp/tree/master)

## How to use

Once you deployed yor app to heroku, you should be able to open `http://yourappname.herokuapp.com/admin/call_routes` (replace `yourappname`
with yours). Try creating your first call route and actually call it!

![Tracking example](https://raw.githubusercontent.com/yuki24/twilio-call-tracking-exampleapp/master/screenshots/incoming-call-exmaple.png)
