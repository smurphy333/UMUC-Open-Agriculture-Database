# Copyright (c) 2016, Open Agriculture Database team Food UMUC 495
# OpenAg is an Open source Social network written in Ruby on Rails This file is licensed
# under GNU GPL v2 or later. See the LICENSE.

module ApplicationHelper
  def belongs_to_user?(resource)
    resource.user == current_user
  end
end
