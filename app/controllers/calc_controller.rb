class CalcController < ApplicationController
  def new
    @calc = Calc.new
  end

  def create
    @calc = Calc.new(calc_params)
    puts @calc.calc
  end

  private
    def calc_params
      params.require(:calc).permit(:height, :weight)
    end

end
