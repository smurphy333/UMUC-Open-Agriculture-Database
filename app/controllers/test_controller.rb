#Copyright (c) 2016, Open Agriculture Database team Food UMUC 495
# OpenAg is an Open source Social network written in Ruby on Rails This file is licensed
# under GNU GPL v2 or later. See the LICENSE.

class TestController < ApplicationController
  before_action :set_user, except: :front
  respond_to :html, :js
  protect_from_forgery except: :test
end
