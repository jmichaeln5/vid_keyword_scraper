# json.array! @sites, partial: "sites/site", as: :site

# ########################################################
require 'rubygems'
require 'nokogiri'
require 'open-uri'

json.array! @sites do | site |

  @html_doc = Nokogiri::HTML(open(site.link))
  @video_id = site.link.delete_prefix('https://www.youtube.com/watch?v=')

  json.id site.id
  json.link site.link
  json.title @html_doc.at_css("title").text
  json.thumbnail_link "https://img.youtube.com/vi/#{@video_id}/0.jpg"
  json.keyword_list @html_doc.at('meta[name="keywords"]').values[1]
  # json.html_doc  Nokogiri::HTML(open(@site.link))
end
