module.exports = ->

  sendgrid = require('sendgrid') process.env.SENDGRID_USERNAME, process.env.SENDGRID_PASSWORD

  email =
    to: 'arieljake@gmail.com'
    from: 'arieljake@gmail.com'
    subject: 'There are some items to do'
    text: 'You have items to do'

  sendgrid.send email, (err, json) ->
    if err
      console.error err
    else
      console.dir json
