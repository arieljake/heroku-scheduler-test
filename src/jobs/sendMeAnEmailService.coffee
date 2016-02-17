module.exports = (msg) ->

  sendgrid = require('sendgrid') process.env.SENDGRID_USERNAME, process.env.SENDGRID_PASSWORD

  email =
    to: 'arieljake@gmail.com'
    from: 'arieljake@gmail.com'
    subject: 'Got a message for you'
    text: msg

  sendgrid.send email, (err, json) ->
    if err
      console.error err
    else
      console.dir json
