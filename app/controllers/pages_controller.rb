class PagesController < ApplicationController

  before_action :authorize, except: [:landing]

  def landing
  end

  def home
    @issues = Issue.all
    @announcements = Announcement.all
  end
end
