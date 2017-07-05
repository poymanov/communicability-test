# encoding: utf-8

require_relative "lib/test"
require_relative "lib/print_results"
require_relative "lib/helper"

current_path = File.dirname(__FILE__)

questions_path = current_path + "/data/questions.txt"
results_path = current_path + "/data/results.txt"

questions = Helper.load_file(questions_path)
results = Helper.load_file(results_path)

# Запуск игры
app = Test.new(questions)
app.start

# Получение результатов
points = game.points

# Вывод результатов
puts "\nВаш результат #{points} баллов"
output = PrintResults.print(points, results)
puts output