require 'rubygems'
require 'ostruct'

require 'sinatra' unless defined?(Sinatra)

configure do
  SiteConfig = OpenStruct.new(
    :title => 'UVA Library Geoportal',
    :description => '',
    :geonetwork_url => 'http://gis.lib.virginia.edu',
    :geonetwork_port => ':8080',
    :geonetwork_mount => 'geonetwork',
    :geoserver_url => 'http://gis.lib.virginia.edu:8080/geoserver',
    :library_catalog => 'http://search.lib.virginia.edu/catalog/',
    :bind => 'http://0.0.0.0',
    :url_base => 'http://0.0.0.0:4567'
  )

  # Load modules
  $LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib/")
  Dir.glob("#{File.dirname(__FILE__)}/lib/*.rb") {|lib| require File.basename(lib, '.*') }
end

configure :development do

end

configure :production do

end
