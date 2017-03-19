class Test

  def initialize(questions)
    @questions = questions
    @points = 0
  end

  def play
    # Перебор вопросов
    @questions.each do |question|
      puts question

      answer = nil

      # Ответ пользователя
      until answer == "а" || answer == "б" || answer == "в"
        puts "а - да, б - нет, в - иногда"
        answer = STDIN.gets.chomp.downcase
      end

      # Подсчет баллов
      if answer == "а"
        @points += 2
      elsif answer == "в"
        @points += 1
      end
    end
  end

  def points
    @points
  end

end