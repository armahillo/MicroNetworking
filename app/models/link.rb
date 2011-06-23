class Link < ActiveRecord::Base
  belongs_to :link_type
  belongs_to :person

  validates_presence_of :url, :name, :link_type
  validate :url_is_valid

  def url_is_valid
    url_re = Regexp.new(/^http:\/\/[\d|\w]+\.[\w|\d]+.*/)
    email_re = Regexp.new(/^[^@]+@[^@]+/i)
    mailto_re = Regexp.new(/^mailto:/i)
    
    #ditch the mailto first
    self.url.gsub(mailto_re, '')

    mailtype = LinkType.find(7) #hacky -- just get the mail type
    
    unless self.url.match(url_re) || (self.url.match(email_re) and self.link_type_id == mailtype.id)
      @errors.add(:url, "must be a valid URL or email address")
    end
  end
end
