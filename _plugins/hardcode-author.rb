# coding: utf-8
module HardcodeAuthor
  AUTHOR_LINKS = {
    'Владимир' => 'https://github.com/razum2um',
    'Иван' => 'https://github.com/shredder-rull',
    'Денис' => 'https://github.com/zloirock',
    'Андрей' => 'https://github.com/andrewzhurov',
    'Николай' => 'https://github.com/niquola'
  }

  def hardcode_author_link(name)
    AUTHOR_LINKS.fetch(name)
  end
end

Liquid::Template.register_filter(HardcodeAuthor)
