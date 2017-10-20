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

arr = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]

def count_elements (array)
  key_to_delete = ""
  unique_item_hash = {}
  array.each do |item|
    item.each do |key, value|
      if !unique_item_hash.include?(value) #if we look through the array and
                                                #find an item that we haven't already added to our unique hash, add the value with an occurence value of 1
        unique_item_hash[value] = 1
      elsif unique_item_hash.include?(value)
        unique_item_hash[value] += 1
      end
    end
  end
  array.uniq! #delete dupes
  array.each do |item|
    puts item
    #item[:count] = 1
    item[:count] = unique_item_hash[item.values[0]]
  end
  return array
end

def merge_data(keys, data)

  new_array = []
  keys.each do |item|
    new_array.push(item)
  end
    i = 0
    new_array.each do |item|
      data_from_data = data[0][item.values[0]]
       data_from_data.each do |key, value|
         #puts key
         new_array[i][key] = value
       end
      i += 1
    end
  return new_array
end

def find_cool(cool)
  cool.each do |item|
    item.each do |key, value|
      if value == "cool"
        return [item]
      end
    end
  end
end


def organize_schools(codeschools)
  locations_hash = {}
  schools_array = []
  codeschools.each do |key, value|
    if !locations_hash.include?(value.values) #if the city isn't in the new hash, add it
      locations_hash[value.values.first] = []
    end
  end

  codeschools.each do |key, value|
    locations_hash.each do |k, v|
      if value.values.first == k
        locations_hash[k].push(key)
      end
    end
  end

  return locations_hash
end
