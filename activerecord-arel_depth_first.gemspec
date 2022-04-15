lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'activerecord-arel_depth_first'
  s.version     = '1.0.0'
  s.summary     = 'A DepthFirst visitor for Arel (removed from Rails in 6.1).'

  s.required_ruby_version = '>= 2.2.2'
  s.license     = 'MIT'
  s.metadata    = { "rubygems_mfa_required" => "true" }
  
  s.author      = 'Tieg Zaharia'
  s.email       = 'tieg.zaharia@gmail.com'
  s.homepage    = 'https://github.com/tidelift/activerecord-arel_depth_first'

  s.files        = Dir['LICENSE', 'README.md', 'lib/**/*']
  s.require_path = 'lib'

  s.extra_rdoc_files = %w( README.md )
  s.rdoc_options.concat ['--main',  'README.md']

  s.add_dependency('activerecord', '>= 4.0.0')
  s.add_dependency('rake')
end
