class ReportController < ApplicationController
  def index
    @time = Time.now
    @files = Dir.glob('*')
  end

  def this_week
  end
end
