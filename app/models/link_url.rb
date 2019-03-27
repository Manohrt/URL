require 'uri'
class LinkUrl < ApplicationRecord
  #validates :original_url, :format => URI::regexp(%w(http https))
  validates :original_url, :url => true,:presence => true
end
