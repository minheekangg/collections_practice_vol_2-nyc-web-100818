# your code goes here
def begins_with_r(array)
  array.each do |word|
    if word[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  empty = []
  array.each do |word|
    if word.include?("a")
        empty << word
      end
  end
  return empty
end

def first_wa(array)
  array.each do |word|
    if word[0..1] == "wa"
      return word
    end
  end
end

def remove_non_strings(array)
  empty = []
  array.each do |word|
    if word == word.to_s
      empty << word
    end
  end
  return empty
end

def count_elements(array)
  grouped = array.group_by {|el| el[:name]}
  return grouped.map {|k,v| {:name => k,:count => v.length}}
end


def merge_data(keys, data)
  keys.flatten.each do |k,v|
    k.each do |label, v2|
    data.flatten.each do |name, needed_data|
      name.each do |key, value|
      if v2 == key
        puts needed_data
      end
      end
    end
  end
  end
  return data
end

def find_cool(array)
  cool = []
  array.each do |element|
  if element[:temperature] == "cool"
    cool << element
  end
end
  return cool
end


def organize_schools(array)
  h={}
  h2={}
  h = array.group_by do |k,v|
    v[:location]
  end
  h.each do |city, data|
    curr_school = []
    data.each do |school, delete|
      curr_school<<school
    end
    h2[city] = curr_school
  end
  return h2
end
