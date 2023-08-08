# frozen_string_literal: true

# Wrapper for model base class
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end
