# XXX/ Этот код необходим только при использовании русских букв на Windows
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

# answers.txt - файл вариантов ответов магического шара
# greetings.txt - файл вариантов приветствий
pach = File.dirname(__FILE__)
pach_answers = pach + "/date/answers.txt"
pach_greetings = pach + "/date/greetings.txt"

puts pach_answers
puts pach_greetings

abort "Не найден файл вопросов - #{pach_answers}" unless File.exist?(pach_answers)
file = File.new(pach_answers, "r:UTF-8")
answers = file.readlines
file.close

if File.exist?(pach_greetings)
  file =File.new(pach_greetings,"r:UTF-8")
  greetings = file.readlines
  file.close
  puts greetings.sample
  puts
  rand(3)
end

puts answers.sample
