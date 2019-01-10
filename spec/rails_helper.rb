require 'spec_helper'

# http://www.rubydoc.info/github/hassox/warden/Warden/Test/Helpers allow you to user methods login_as() logout() in your RSpecs
include Warden::Test::Helpers
Warden.test_mode!