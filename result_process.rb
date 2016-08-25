# encoding: utf-8

process_file = File.open("searchResult.txt", "r")
process_output = File.new("process_result.txt", "w+")
counter = 0
new_line = ''


process_file.each do |file|
  file.each_line do |line|
    counter += 1
    if counter % 10 == 0
      new_line += line.strip.to_s
      p 'get one'
      p new_line
      process_output.syswrite("#{new_line}\n")
      new_line = ''
    else
      new_line += line.strip.to_s + "|"
    end
  end
end
process_file.close
process_output.close
