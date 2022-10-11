# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array

    def span
        return nil if self.empty?
        return self.max - self.min
    end
  
    def average
        return nil if self.empty?
        return self.sum / self.length.to_f
    end
    
    def median
        return nil if self.empty?
        arr = self.sort
        if self.length % 2 == 0
            return (arr[(arr.length/2)-1] + arr[(arr.length/2)])/2.0
        else
            return arr[arr.length/2]
        end
    end

    def counts
        hash = Hash.new(0)
        self.each do |x|
            hash[x] += 1
        end
        hash
    end

    def my_count(val)
        count = 0
        self.each do |x|
            if x == val
                count += 1
            end
        end
        count
    end

    def my_index(val)
        self.each_with_index do |x,i|
            if val == x
                return i
            end
        end
        return nil
    end

    def my_uniq
        ret = []
        self.each do |x|
            if !ret.include?(x)
                ret<<x
            end
        end
        ret
    end

    def my_transpose
        arr = []
        pos = 0
        self.each do |x|
            
            

        end
    end

end
