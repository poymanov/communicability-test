# encoding: utf-8

require_relative "lib/test"
require_relative "lib/print_results"

current_path = File.dirname(__FILE__)

questions_path = current_path + "/data/questions.txt"
results_path = current_path + "/data/results.txt"

# Получение массивов с вопросами и результатами
begin
  questions = File.readlines(questions_path)
rescue Errno::ENOENT
  abort "Файл с ответами не найден"
end

begin
  results = File.readlines(results_path)
rescue Errno::ENOENT
  abort "Файл с результатами не найден"
end

# Запуск игры
game = Test.new(questions)
game.play

# Получение результатов
points = game.points

# Вывод результатов
puts "\nВаш результат #{points} баллов"
output = PrintResults.print(points, results)
puts output