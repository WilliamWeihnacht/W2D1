def my_map!(arr,&blk)
    arr.each_with_index do |x,i|
        arr[i] = blk.call(x)
    end
end

def two?(arr, &blk)
    count = 0
    arr.each do |x|
        if blk.call(x) == true
            count += 1
        end
    end
    if count == 2
        return true
    end
    return false
end

def nor_select(arr,prc1,prc2)
    ret = []
    arr.each do |x|
        if !prc1.call(x) && !prc2.call(x)
            ret<<x
        end
    end
    ret
end

def array_of_hash_sum(arr)
    count = 0
    arr.each do |x|
        x.each_value do |y|
            count += y
        end
    end
    count
end

def slangify(str)
    arr = str.split
    vowels = "aeiouAEIOU"
    ret = []
    arr.each do |x|
        temp = ""
        first = true
        x.each_char do |y|
            if vowels.include?(y) && first
                first = false
            else
                temp<<y
            end
        end
        ret<<temp
    end
    ret.join(" ")
end

def char_counter(str,*args)
    hash = Hash.new(0)
    if args.empty?
        str.each_char do |x|
            hash[x] += 1
        end
    else
        args.each do |x|
            str.each_char do |y|
                if x == y
                    hash[x] += 1
                end
            end
            if !str.include?(x)
                hash[x] = 0
            end
        end
    end
    hash
end