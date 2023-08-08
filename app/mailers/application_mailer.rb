# frozen_string_literal: true

# Wrapper for mailer base classes
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
