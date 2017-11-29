class MainController < ApplicationController
  def index
  end

  def dividebyzero
    #render "main/dividebyzero.html.erb"
    #require 'logger'
    # Keep data for the current month only
    #logger.error "devide by zero about to start."

    begin
      puts 'devide by zero about to start.'
      raise 5/0
    rescue Exception => ex
      @ad= ex.backtrace.inspect
    end
  end

  def nyt
    require 'rubygems'
    require 'nokogiri'
    require 'open-uri'
      cls = 'story-heading'
      doc = Nokogiri::HTML(open("https://www.nytimes.com/"))

      # Find the link of interest
      @link = doc.xpath("//*[@class=\"#{cls}\"]")

  end


end
