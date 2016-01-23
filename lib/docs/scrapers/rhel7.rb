module Docs
  class Rhel7 < UrlScraper
  #  include StubRootPage

    self.name = 'RHEL7'
    self.type = 'rhel7'
    self.version = '7'
    # self.base_url = 'https://docs.fedoraproject.org/en-US/Fedora/18/html/System_Administrators_Guide/'
    self.base_url = 'https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/System_Administrators_Guide/'
    self.root_path = 'index.html'
    self.links = {
      home: 'https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/System_Administrators_Guide/',
      code: 'https://git.centos.org/project/rpms'
    }

    html_filters.push 'rhel7/clean_html', 'rhel7/entries'

    options[:trailing_slash] = false
    options[:skip] = %w(tools about ln-idp19057904.html)

    options[:attribution] = <<-HTML
      &copy; 2015 Rdhat<br>
    HTML
  end
end
