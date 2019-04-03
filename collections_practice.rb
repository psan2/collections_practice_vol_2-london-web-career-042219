require 'pry'

def begins_with_r(words)
  words.map! { |word| word.to_s.downcase.start_with?("r") }
  return words.all?
end

def contain_a(words)
  words.select! { |word| word.to_s.downcase.include?("a") }
  return words
end

def first_wa(words)
  words.each do |word|
    if word.to_s.downcase.start_with?("wa")
      return word
    end
  end
end

def remove_non_strings(array)
  array.select! { |element| element == element.to_s }
  return array
end

def count_elements(array)
  array.group_by(&:itself)
    .map { |key, entries| key.merge(count: entries.length)  }
end

def merge_data(data1,data2)
  i = 0
  while
    i < data1.length do
      data2.each do |person|
        person.each do |name, details|
          binding.pry
        end
      end
    end
  end
end

def find_cool(input)
  cool = []
  input.each do |item|
    item.each do |key, val|
      if key == :temperature && val == "cool"
        cool << item
      end
    end
  end
  return cool
end

def organize_schools(schools)
  schools.each do |school, data|
    array_name = data.values.join
    array_name.push(school)
    binding.pry
  end
end
