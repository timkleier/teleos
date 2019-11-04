module ContentItemsHelper

  def content_type_icon(type)
    icon = case type
    when 'Audio'
      'headphones'
    when 'Video'
      'video play'
    when 'Text'
      'file alternate outline'
    end
    semantic_icon("big #{icon}")
  end
end
