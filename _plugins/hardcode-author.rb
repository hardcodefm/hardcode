# coding: utf-8
module HardcodeAuthor
  AUTHOR_LINKS = {
    'Владимир' => 'https://github.com/razum2um',
    'Иван' => 'https://github.com/shredder-rull',
    'Денис' => 'https://github.com/zloirock',
    'Андрей' => 'https://github.com/andrewzhurov',
    'Николай' => 'https://github.com/niquola',
    'Андрей Руденко' => 'https://github.com/prepor',
    'Роман' => 'https://github.com/roman01la'
  }

  def hardcode_author_link(name)
    AUTHOR_LINKS.fetch(name)
  end

  def author_first_name(name)
    name.split(/\s+/).first
  end

  def shuffle(arr)
    arr.dup.shuffle
  end
end

Liquid::Template.register_filter(HardcodeAuthor)
