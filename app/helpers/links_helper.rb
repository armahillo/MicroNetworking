module LinksHelper

  def url_or_email url
    if url.match(/http[s]?:\/\//)
      url
    else
      "mailto:#{url}"
    end
  end
end
