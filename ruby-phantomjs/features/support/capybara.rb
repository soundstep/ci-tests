
require 'capybara/cucumber'
require 'capybara/poltergeist'

Capybara.default_driver = :poltergeist
Capybara.default_selector = :xpath

Capybara.register_driver :poltergeist do |app|
    options = {
        :js_errors => true,
        :timeout => 120,
        :debug => false,
        :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
        :inspector => true,
    }
    Capybara::Poltergeist::Driver.new(app, options)
end
