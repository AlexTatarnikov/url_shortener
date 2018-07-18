SimpleCov.profiles.define 'url_shortener' do
  load_profile 'test_frameworks'

  add_filter '/config/'
  add_filter '/db/'
  add_filter '/app/serializers/'
  add_filter '/app/models/concerns'
  add_filter '/.cache/'
  add_filter '/app/uploaders/'
  add_filter '/app/helpers/'
  add_filter '/.gem'

  add_group 'Controllers', 'app/controllers'
  add_group 'Models', 'app/models'
  add_group 'Mailers', 'app/mailers'
  add_group 'Workers', 'app/workers'

  track_files '{app,lib}/**/*.rb'
end
