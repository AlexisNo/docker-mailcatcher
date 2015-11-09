# MailCatcher docker image for development environment

A Docker [mailcatcher](http://mailcatcher.me/) image to use for development environments.


## Usage

Link this service to another one that use it as an SMTP server.

Example with docker-compose:

    webapp:
      /*
       * Define the "webapp" service here
       */
      links:
       - mailcatcher
    mailcatcher:
      image: alexisno/mailcatcher-dev
      ports:
       - "1080:1080"

Within the `webapp` container, the SMTP service will be available at the address `mailcatcher:1025`.

Visit `http://localhost:1080` to see the catched emails.
