# your code goes here
def begins_with_r(array)
  array.each do |item|
    if !item.start_with?("r")
      puts "false"
      return false
    end
  end
  puts "true"
  return true
end

def contain_a(array)
  array.select do |item|
    item.include?("a")
  end
end

def first_wa(array)
  array.each do |item|
    if item["wa"] == "wa"
      puts item
      return item
    end
  end
end

def remove_non_strings(array)
  array.delete_if{|item| item.class != String}
end

def count_elements (array)

end

def merge_data(keys, data)
  return keys.merge(data)
end

def find_cool
end

def organize_schools
end
