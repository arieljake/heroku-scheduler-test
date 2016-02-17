module.exports = function()
{
    var sendgrid = require('sendgrid')(
      process.env.SENDGRID_USERNAME,
      process.env.SENDGRID_PASSWORD
    );

    var email = {
        to: 'arieljake@gmail.com',
        from: 'arieljake@gmail.com',
        subject: 'There are some items to do',
        text: 'You have items to do'
    };

    sendgrid.send(email, function(err, json) {
      if (err)
      {
        console.error(err);
      }
      else
      {
        console.dir(json);
      }
    });

};
