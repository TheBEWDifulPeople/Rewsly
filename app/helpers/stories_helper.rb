module StoriesHelper
  def convert_to_tags_links(tag_list)
    tag_list.map do |tag|
      link_to "#{tag}", Category.find_by(name: tag)
    end.join(", ").html_safe
  end
end
