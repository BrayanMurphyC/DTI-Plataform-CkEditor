module ApplicationHelper
  def markdown(content)
    renderer = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
    options = {
      autolink: true,
      no_intra_emphasis: true,
      disable_indented_code_blocks: true,
      fenced_code_blocks: true,
      lax_spacing: true,
      strikethrough: true,
      superscript: true
    }
    Redcarpet::Markdown.new(renderer, options).render(content).html_safe
  end

  def form_image_select(event)
    return image_tag event.cover.url,
                     id: 'image-preview',
                     class: 'responsive-img' if event.cover.exists?
    image_tag 'placeholder.png', id: 'image-preview', class: 'responsive-img'
  end

  def form_logo_select(event)
    return image_tag event.photo.url,
                     id: 'photo-preview',
                     class: 'responsive-img' if event.photo.exists?
    image_tag 'placeholder.png', id: 'photo-preview', class: 'responsive-img'
  end

end
