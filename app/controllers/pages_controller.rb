class PagesController < ApplicationController
  @@class_counter = 0

  def fortune
    fortunes = [
      'You will be happy.',
      'You will be sad.',
      'You will die a thousand terrible deaths for all eternity and then some.'
    ]
    @fortune = fortunes.sample
    render 'myfortune.html.erb'
  end

  def lotto
    numbers = []
    6.times do
      numbers << rand(1...56)
    end
    @number_string = numbers.join(' --- ')
    render 'lotto.html.erb'
  end

  def counter
    @@class_counter += 1
    @count = @@class_counter
    render 'counter.html.erb'
  end
end
