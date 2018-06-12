class Calc 
    include ActiveModel::Model

    attr_reader(
        :bmi,
        :bmi_rate,
        :obesity_rate,
        :proper_weight,
        :diff_from_proper_weight,
        :rate_count,
        :range_index
    )
    attr_accessor(
        :height,
        :weight
    )

    
    def initialize(attributes={})
        super
        @bmi_rate = BMI_RATE
        @obesity_rate = OBESITY_RATE
        @rate_count = BMI_RATE.count
      end
  
    def calc
        @height_m = @height.to_f / 100
        @bmi = (@weight.to_f / (@height_m * @height_m)).round(2)
        @proper_weight = ((@height_m * @height_m) * 22).round(2)
        @diff_from_proper_weight = (@weight.to_f - @proper_weight).round(2)
        @range_index = get_range(@bmi)
    end

    private
    RANGE = [18.5, 25, 30, 35, 40].freeze
    BMI_RATE = ["18.5未満", "18.5～25未満", "25～30未満", "30～35未満", "35～40未満", "40以上"].freeze
    OBESITY_RATE = ["低体重(痩せ型)", "普通体重", "肥満（１度）", "肥満（２度）", "肥満（３度）", "肥満（４度）"].freeze

    def get_range(bmi)
        RANGE.each_with_index do |r,i|
            if bmi < r
                return i
            end
        end
        return RANGE.length 
    end
  end