#บัณฑิตา อวยชัยเจริญ 5510613234
#ชมพูนิกข์ ประการแก้ว 5510613325
class Dessert
  attr_accessor :name,:calories
  def initialize(name, calories)
    @name=name
    @calories=calories
  end
  def name=(x)
    @name=x
  end
  def calories=(x)
    @calories=x
  end
  def name
    @name
  end
  def calories
    @calories
  end
  
  
  def healthy?
    if @calories<200
      return true
    end
    return false
  end
  
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def flavor
    @flavor
  end
  def flavor=(x)
    @flavor=x
  end
  def initialize(flavor)
    a= flavor<<" jelly bean"
    @name=a
    @calories = 5
  end
end