#บัณฑิตา อวยชัยเจริญ 5510613234
#ชมพูนิกข์ ประการแก้ว 55106133
module FunWithStrings
  def palindrome?
    a=self.gsub(/[[:punct:]]/,"")
    b=a.gsub(/[[:space:]]/,"")
    d=b.downcase
    c=d.reverse
    if d==c
      return true
    else
      return false
    end
  end
  
  def count_words
    
    a=self.downcase
    b=a.gsub(/[[:punct:]]/,"").split
    ans=Hash.new(0)
    b.each do |sth|
      ans[sth]+=1
    end
    return ans
  end 

  def anagram_groups
    ans = []
    if self==''
      return ans
    else 
      until self.empty?
        k=self.split(" ")
        ans=k.group_by { |sth| sth.chars.sort }.values
        return ans
      end
    end
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end