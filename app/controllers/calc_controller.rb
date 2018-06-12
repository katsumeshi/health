class CalcController < ApplicationController

  def index
    @calc = Calc.new(height: "",
                     weight: "")
  end
  
  def calc
    @calc = Calc.new(calc_params)
    @calc.calc
    render :index

  end

  private
    def calc_params
      params.require(:calc).permit(:height, :weight)
    end

end
