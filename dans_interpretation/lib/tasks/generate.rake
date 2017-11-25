require '../../models/car_style'
require '../../models/car'

namespace :generate do
  desc 'Generate statements from a set of objects'
  task :statements do
    @car_types = set_up_car_types
    @cars = set_up_car_fleet(@car_types)
    @drivers = set_up_drivers
    set_up_rentals # will be added to @drivers
    @statements = []

    @drivers.each do |driver|
      @statements << Statement.new(driver.rentals)
    end

    @statements.each do |statement|
      puts statement.to_text
      puts '-' * 100
    end
  end
end

def set_up_car_types
  raw_data = [
      { name: 'Saloon', price_per_day: 20, id: 0 },
      { name: 'SUV', price_per_day: 30, id: 1 },
      { name: 'Hatchback', price_per_day: 40, id: 2 }
  ]

  # This...
  results = []
  raw_data.each do |style|
    results << CarStyle.new(style[:name], style[:price_per_day], style[:id])
  end
  results

  # is the same as this...
  results = raw_data.map { |style| CarStyle.new(style[:name], style[:price_per_day], style[:id]) }

  return results # RubyMine doesn't like return on the last line
end

def set_up_car_fleet(car_styles)
  raw_data = [
      { name: 'Mondeo', car_style_id: 0 },
      { name: 'Rav4', car_style_id: 1 },
      { name: 'Golf', car_style_id: 2 }
  ]
  results = []
  raw_data.each do |car_data|
    this_style =
    results << Car.new(car_data[:name], this_style)
  end
  return results
end