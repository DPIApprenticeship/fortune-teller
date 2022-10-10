class DiceController < ApplicationController
  def roll(num_of_dice:, num_of_sides:)
    dice_array = []
    num_of_dice.times do
      dice_array.push(rand(1..num_of_sides))
    end

    return dice_array
  end
  
  def one_d_6
    @dice = 1
    @sides = 6
    @rolls = self.roll(num_of_dice: @dice, num_of_sides: @sides)
    render({ :template => "dice_layouts/dice.html.erb"})
  end

  def two_d_6
    @dice = 2
    @sides = 6
    @rolls = self.roll(num_of_dice: @dice, num_of_sides: @sides)
    render({ :template => "dice_layouts/dice.html.erb"})
  end

  def three_d_6
    @dice = 3
    @sides = 6
    @rolls = self.roll(num_of_dice: @dice, num_of_sides: @sides)
    render({ :template => "dice_layouts/dice.html.erb"})
  end

  def four_d_6
    @dice = 4
    @sides = 6
    @rolls = self.roll(num_of_dice: @dice, num_of_sides: @sides)
    render({ :template => "dice_layouts/dice.html.erb"})
  end

  def five_d_6
    @dice = 5
    @sides = 6
    @rolls = self.roll(num_of_dice: @dice, num_of_sides: @sides)
    render({ :template => "dice_layouts/dice.html.erb"})
  end

  def six_d_6
    @dice = 6
    @sides = 6
    @rolls = self.roll(num_of_dice: @dice, num_of_sides: @sides)
    render({ :template => "dice_layouts/dice.html.erb"})
  end
end
