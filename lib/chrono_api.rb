require "chrono_api/version"
require 'httparty'
module ChronoApi
  include HTTParty

  base_uri "https://chrono-api.herokuapp.com/api/v1"

  format :json

  def self.create_timer!
    self.post("/timers").parsed_response
  end

  def self.get_timer(uuid)
    self.get("/timers", query: {uuid: uuid}).parsed_response
  end

  def self.stop_timer(uuid)
    self.put("/timers/#{uuid}").code
  end

  def self.delete_timer(uuid)
    self.delete("/timers/#{uuid}", query: {id: uuid}).code
  end
end
