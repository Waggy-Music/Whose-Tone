module ApplicationHelper
     require "uri"

def text_url_to_link text

  URI.extract(text, ['http','https'] ).uniq.each do |url|
    sub_text = ""
    sub_text << "<a href=" << url << " target=\"_blank\">" << url << "</a>"

    text.gsub!(url, sub_text)
  end

  return text
end
# ここから追記 これで表示できる<%= error_messages! %>
    def error_messages!
      return '' if resource.errors.empty?
  
      html = ''
      resource.errors.full_messages.each do |msg|
        html += <<-EOF
          <div class="alert-danger" role="alert">
            #{msg}
          </div>
        EOF
      end
  
      html.html_safe
    end
end
