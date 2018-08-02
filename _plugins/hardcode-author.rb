# coding: utf-8
module HardcodeAuthor
  AUTHOR_LINKS = {
    'Владимир' => 'https://twitter.com/razum2um',
    'Иван' => 'https://twitter.com/ShredderRull'
  }

  def hardcode_author_link(name)
    AUTHOR_LINKS.fetch(name)
  end
end

Liquid::Template.register_filter(HardcodeAuthor)
