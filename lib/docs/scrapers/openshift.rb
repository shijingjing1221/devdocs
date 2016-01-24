module Docs
  class Openshift < UrlScraper
  #  include StubRootPage

    self.name = 'Openshift'
    self.type = 'openshift'
    self.version = '3'
    self.start_id = 20000
    # self.base_url = 'https://docs.fedoraproject.org/en-US/Fedora/18/html/System_Administrators_Guide/'
    self.base_url = 'https://developers.openshift.com/en/'
    self.root_path = 'getting-started-overview.html'
    self.links = {
      home: 'https://www.openshift.com',
      code: 'https://github.com/openshift/origin'
    }

    html_filters.push 'openshift/clean_html', 'openshift/entries'

    options[:trailing_slash] = false
    options[:skip] = %w(tools about contact.html)

    options[:attribution] = <<-HTML
      &copy; 2015 Redhat<br>
    HTML
  end
end
