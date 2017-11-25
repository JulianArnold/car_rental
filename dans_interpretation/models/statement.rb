require 'json'

class Statement
  # @statement = Statement.new(driver)
  def initialize(driver)
    @driver = driver
  end

  # @statement = Statement.new(rentals)
  # @statement.data
  # outputs a hash
  def data

  end

  # @statement = Statement.new(rentals)
  # @statement.to_text
  # outputs the data as a text block
  def to_text

  end

  # @statement = Statement.new(rentals)
  # @statement.to_json
  # outputs data as a json
  def to_json
    data.to_json
  end
end