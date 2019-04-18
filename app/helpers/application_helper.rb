module ApplicationHelper
  # helper to extract youtube video_id
  def embed(link)
    # youtube_id = link.try(:split, ",").last
    youtube_id = link.split("=").last
    content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
  end

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Open Heavens"
    if page_title.empty?
      base_title
    else
      base_title + " | " + page_title
    end
  end
end
