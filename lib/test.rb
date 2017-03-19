class Test
  attr_accessor :points, :questions

  def initialize(questions)
    @questions = questions
    @points = 0
    @answer_variants = {
      "а" => "да",
      "б" => "нет",
      "в" => "иногда",
    }
  end

  def play
    # Перебор вопросов
    questions.each do |question|
      puts question

      variants_view = answer_variants_view

      answer = nil

      # Ответ пользователя
      until @answer_variants.key?(answer)
        puts variants_view
        answer = STDIN.gets.chomp.downcase
      end

      # Подсчет баллов
      if answer == "а"
        self.points += 2
      elsif answer == "в"
        self.points += 1
      end
    end
  end

  # Представление вывода вариантов ответа
  def answer_variants_view
    view = ""

    @answer_variants.each_pair do | index, value |
      view += "#{index} - #{value}, "
    end

    view
  end
end