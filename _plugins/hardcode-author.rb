# coding: utf-8
module HardcodeAuthor
  AUTHOR_LINKS = {
    'Влад Боков' => 'https://twitter.com/razum2um',
    'Иван Рудских' => 'https://github.com/shredder-rull'
  }

  def hardcode_author_link(name)
    AUTHOR_LINKS.fetch(name)
  end
end

Liquid::Template.register_filter(HardcodeAuthor)
