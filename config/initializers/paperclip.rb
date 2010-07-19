if RAILS_ENV == 'development'
	Paperclip.options[:image_magick_path] = '/opt/local/bin'
elsif RAILS_ENV == 'production'
	Paperclip.options[:image_magick_path] = '/usr/local/bin'
end

def transliterate(str)
  # Based on permalink_fu by Rick Olsen
  # Escape str by transliterating to UTF-8 with Iconv
  s = Iconv.iconv('ascii//ignore//translit', 'utf-8', str).to_s
  # Downcase string
  s.downcase!
  # Remove apostrophes so isn't changes to isnt
  s.gsub!(/'/, '')
  # Replace any non-letter or non-number character with a space
  s.gsub!(/[^A-Za-z0-9]+/, ' ')
  # Remove spaces from beginning and end of string
  s.strip!
  # Replace groups of spaces with single hyphen
  s.gsub!(/\ +/, '-')
  return s
end