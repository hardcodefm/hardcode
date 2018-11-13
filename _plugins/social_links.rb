# coding: utf-8
module SocialLinks
  def social_links(input, page_url=nil)
    site_link = if (url = @context['site']['url']) && page_url
      %Q{<li><a href="#{url}#{page_url}">На hardcode.fm</a></li>}
    end
    input + (<<~HTML
        <h4>Послушал? Оставь отзыв</h4>
        <ul>
          #{site_link}
          <li><a href="https://t.me/hardcodefm">hardcodefm@telegram</a> +
              <a href="https://t.me/hardcodefm_group">группа</a></li>
          <li><a href="https://www.facebook.com/hardcodefm/">hardcodefm@facebook</a></li>
          <li><a href="https://vk.com/hardcodefm">hardcodefm@vkontakte</a></li>
        </ul>
      HTML
    ).strip
  end
end

Liquid::Template.register_filter(SocialLinks)
