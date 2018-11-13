# coding: utf-8
module RootUrl
  def root_url?(url)
    (url == 'index.html') || (url == '/')
  end
end

Liquid::Template.register_filter(RootUrl)
