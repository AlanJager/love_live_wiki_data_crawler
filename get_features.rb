# encoding: utf-8

def sort_event_type(event_name)
  sm = event_name =~/Score Match/
  mf = event_name =~/Medley Festival/
  
  if !sm.nil?
    return 1.0
  elsif !mf.nil?
    return 1.5
  else 
    return 0.5
  end
end

def get_event_time(time_string)
  s_index = time_string.index('+')
  return time_string[s_index + 1..-2]
end

def get_score(score)
  s_index = score.index('pt')
  return score[0, s_index]
end

def remove_suffix(string, suffix)
  s_index = string.index(suffix)
  return string[0, s_index]
end

def get_person_number(number)
  s_index = score.index('人')
  return score[0, s_index]
end

def write_a_feature(file, value, if_end)
  if !if_end
    file.syswrite("#{value} ")
  else
    file.syswrite("#{value}\n")
  end
end

process_file = File.open("process_result3.txt", "r")
train_file = File.new("train_file.txt", "w+")
# get into different types
score_match = Array.new()
normal = Array.new()
medley_festival = Array.new()
result_features = [score_match, medley_festival, normal]
process_file.each do |file|
  file.each_line do |line|
    line_array = line.split('|')

    if sort_event_type(line_array[2]).to_f == 1.0
      write_a_feature(train_file, line_array[1].to_f / 1000, false)
      write_a_feature(train_file, get_event_time(line_array[3]).to_f, false)
      write_a_feature(train_file, remove_suffix(line_array[6], "pt").to_f / 1000, true)
    end
  end
end

train_file.close
process_file.close



