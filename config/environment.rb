# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Late load functionality into trestle
require 'trestle/controller_methods'
