module ContentItemsHelper

  def content_type_icon(type, size = nil)
    icon = case type
    when 'Audio'
      'headphones'
    when 'Video'
      'video play'
    when 'Text'
      'file alternate outline'
    end
    semantic_icon("#{size} #{icon} teal")
  end
end
