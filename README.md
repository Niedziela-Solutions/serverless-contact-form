# Serverless Contact Form

Built with [Ruby on Jets](https://rubyonjets.com).

The goal with this is to provide a serverless endpoint to submit contact forms on static/serverless websites to. It just takes the email/body and sends to the configured email address.

## Requirements

## Setup

1. `bundle install`
1. `cp .example.env .env.test`
1. `cp .example.env .env.development`

`bundle exec jets server`

Contact `post` endpoint is at: [http://localhost:8888/contact](http://localhost:8888/contact)

Example HTML page with form is provided [here](example.html). You can use it locally to test the form submit.

## Testing

`bundle exec rspec`

## Linting

`bundle exec rubocop -a`

## Deploying

You will need to have an AWS IAM Profile setup. If it's not the default profile, you prefix the deploy command with `AWS_PROFILE=other`.

`JETS_ENV=production bundle exec jets deploy`
