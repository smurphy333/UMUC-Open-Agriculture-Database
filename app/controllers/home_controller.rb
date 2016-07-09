# Copyright (c) 2016, Open Agriculture Database team Food UMUC 495
# OpenAg is an Open source Social network written in Ruby on Rails This file is licensed
# under GNU GPL v2 or later. See the LICENSE.

class HomeController < ApplicationController
  before_action :set_user, except: :front
  respond_to :html, :js

  def index
    @post = Post.new
    @friends = @user.all_following.unshift(@user)
    @activities = PublicActivity::Activity.where(owner_id: @friends).order(created_at: :desc).paginate(page: params[:page], per_page: 10)
  end

  def front
    @activities = PublicActivity::Activity.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
  end

  def find_friends
    @friends = @user.all_following
    @users =  User.where.not(id: @friends.unshift(@user)).paginate(page: params[:page])
  end

  def graph
    @recipes =  Dir.glob("#{Rails.root}/public/uploads/post/attachment/*/*.gro")
  end

  def get_graph
    @twodarray = [['Sensor', 'Timestamp', 'Sensor Value'],]
    File.open(params[:file] , "r") do |f|
        f.each_line do |line|
        textarray = line.split()
        textarray[0], textarray[1], textarray[2] =textarray[1], textarray[0].gsub!(/:/, '').to_i, textarray[2].to_i
        @twodarray << textarray
      end
    end
  end

  private
  def set_user
    @user = current_user
  end
end
