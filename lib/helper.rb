module Helper
  def self.load_file(file_path)
    begin
      file_content = File.readlines(file_path)
    rescue Errno::ENOENT
      abort "Ошибка получения файла #{file_path}"
    end
  end
end