class DiceController < ApplicationController
  def roll(num_of_dice:, num_of_sides:)
    dice_array = []
    num_of_dice.times do
      dice_array.push(rand(1..num_of_sides))
    end

    return dice_array
  end
  
  def one_d_6
    # @roll = rand(1..6)
    @rolls = self.roll(num_of_dice: 1, num_of_sides: 6)
    render({ :template => "dice_layouts/one_d_6.html.erb"})
  end

  def two_d_6
    @rolls = self.roll(num_of_dice: 2, num_of_sides: 6)
    render({ :template => "dice_layouts/two_d_6.html.erb"})
  end

  def three_d_6
    @rolls = self.roll(num_of_dice: 3, num_of_sides: 6)
    render({ :template => "dice_layouts/three_d_6.html.erb"})
  end
end
