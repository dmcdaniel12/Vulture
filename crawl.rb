#!/usr/bin/ruby
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'openssl'
require 'win32ole'
require './lib/email'


BASE_URL = "http://www.rods.com"
LIST_URL = "#{BASE_URL}"

page = Nokogiri::HTML(open(LIST_URL, ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE))
menu = page.css('div#menu-1')

if menu.nil? || menu.empty?
  put "Rod's Website is down!"
  vemail = Email.new
  vemail.sendMail()
end