class Test
  attr_accessor :points, :questions

  ANSWER_VARIANTS = {
    "а" => "да",
    "б" => "нет",
    "в" => "иногда",
  }

  def initialize(questions)
    @questions = questions
    @points = 0
    @answer_variants_view = set_answer_variants_view
  end

  def begin
    # Перебор вопросов
    questions.each do |question|
      puts question

      count_points(input_answer)
    end
  end

  private

  # Представление вывода вариантов ответа
  def set_answer_variants_view
    view = ""

    ANSWER_VARIANTS.each_pair do | index, value |
      view += "#{index} - #{value}, "
    end

    view
  end

  # Получение варианта ответа пот пользователя
  def input_answer
    answer = nil

    # Ответ пользователя
    until ANSWER_VARIANTS.key?(answer)
      puts @answer_variants_view
      answer = STDIN.gets.chomp.downcase
    end

    return answer
  end

  # Подсчет баллов пользователя
  def count_points(answer)
    if answer == "а"
      self.points += 2
    elsif answer == "в"
      self.points += 1
    end
  end
end