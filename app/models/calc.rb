class Calc 
    include ActiveModel::Model
  
    attr_accessor(
      :height,
      :weight
    )
  
    def calc
        height_m = height.to_f / 100
        return weight.to_f / (height_m * height_m)
    end
  end