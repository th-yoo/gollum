# https://github.com/gollum/gollum/wiki/Sample-config.rb
# ldap enabled

# Launch Gollum using a specific git adapter. See https://github.com/gollum/gollum/wiki/Git-adapters
# Default: rugged
#
# Equivalent to --adapter [ADAPTER]

module Gollum
  # to require 'my_adapter':
  Gollum::GIT_ADAPTER = "my"
end

gollum_path = '/home/gollum/wiki'
Precious::App.set(:gollum_path, gollum_path)

wiki_options = {

  ##############################################################################
  # Command line option equivalents

  #-----------------------------------------------------------------------------

  #-----------------------------------------------------------------------------
  # Enable file uploads. If set to 'dir', Gollum will store all uploads in the
  # /uploads/ directory in repository root. If set to 'page', Gollum will
  # store each upload at the currently edited page.
  # Default: false

  # Equivalent to --allow-uploads dir
  allow_uploads: true,

  # Equivalent to --allow-uploads page
  #allow_uploads: true,
  #per_page_uploads: true,

  #-----------------------------------------------------------------------------
  # Set the path to look for static assets.
  #
  # Equivalent to --assets [PATH]

  #static_assets_path: [PATH]

  #-----------------------------------------------------------------------------
  # Tell Gollum that the git repository should be treated as bare.
  #
  # Equivalent to --bare

  #repo_is_bare: true,

  #-----------------------------------------------------------------------------
  # Specify the leading portion of all Gollum URLs (path info). Setting this to
  # /wiki will make the wiki accessible under http://localhost:4567/wiki/.
  # Default: /
  #
  # Equivalent to --base-path [PATH]

  #base_path: [PATH],

  #-----------------------------------------------------------------------------
  # Enable support for annotations using CriticMarkup.
  #
  # Equivalent to --critic-markup

  #critic_markup: true,

  #-----------------------------------------------------------------------------
  # Tell Gollum to inject custom CSS into each page. Uses custom.css from wiki
  # root
  #
  # Equivalent to --css

  #css: true,

  #-----------------------------------------------------------------------------
  # Parse and interpret emoji tags (e.g. :heart:) except when the leading colon
  # is backslashed (e.g. \:heart:).
  #
  # Equivalent to --emoji

  emoji: true,

  #-----------------------------------------------------------------------------
  # Tell Gollum to use the first <h1> as page title.
  #
  # Equivalent to --h1-title

  #h1_title: true,

  #-----------------------------------------------------------------------------
  # Specify the hostname or IP address to listen on.
  # Default: '0.0.0.0'.
  #
  # Equivalent to --host [HOST]

  # ???

  #-----------------------------------------------------------------------------
  # Launch Gollum in "console mode", with a predefined API.
  #
  # Equivalent to --irb

  # ???

  #-----------------------------------------------------------------------------
  # Tell Gollum to inject custom JS into each page. Uses custom.js from wiki
  # root.
  #
  # Equivalent to --js

  #js: true,

  #-----------------------------------------------------------------------------
  # Compatibility with 4.x
  # https://github.com/gollum/gollum/wiki/5.0-release-notes#compatibility-option
  #
  # Internal links resolve case-insensitively, will treat spaces as hyphens, and
  # will match the first page found with a certain filename, anywhere in the
  # repository. Provides compatibility with Gollum 4.x.
  #
  # Equivalent to --lenient-tag-lookup

  #hyphened_tag_lookup: true,
  #case_insensitive_tag_lookup: true,
  #global_tag_lookup: true,

  #-----------------------------------------------------------------------------
  # Enables MathJax (renders mathematical equations). By default, uses the
  # TeX-AMS-MML_HTMLorMML config with the autoload-all extension.5
  #
  # Equivalent to --mathjax

  mathjax: true,

  #-----------------------------------------------------------------------------
  # Specify path to a custom MathJax configuration.
  # Default: mathjax.config.js file from repository root.
  #
  # Equivalent to --mathjax-config [FILE]

  #mathjax_config: [FILE],

  #-----------------------------------------------------------------------------
  # Do not render metadata tables in pages.
  #
  # Equivalent to --no-display-metadata

  #display_metadata: false,

  #-----------------------------------------------------------------------------
  # Disable the feature of editing pages.
  # Default: true
  #
  # Equivalent to --no-edit

  #allow_editing: false,

  #-----------------------------------------------------------------------------
  # Specify the subdirectory for all pages. If set, Gollum will only serve pages
  # from this directory and its subdirectories.
  # Default: repository root.
  #
  # Equivalent to --page-file-dir [PATH]

  #page_file_dir: [PATH],

  #-----------------------------------------------------------------------------
  # Follow pages across renames in the History view.
  # Default: true.

  # Equivalent to --follow-renames
  #follow_renames: true,

  # Equivalent to --no-follow-renames
  #follow_renames: false,

  #-----------------------------------------------------------------------------
  # Specify the port to bind Gollum with.
  # Default: 4567.
  #
  # Equivalent to --port [PORT]

  # ???

  #-----------------------------------------------------------------------------
  # Specify the git branch to serve.
  # Default: master.
  #
  # Equivalent to --ref [REF]

  #ref: [REF],

  #-----------------------------------------------------------------------------
  # Use static assets.
  # Defaults to false in development/test, true in
  # production/staging.

  # Equivalent to --static
  #static: true,

  # Equivalent to --no-static
  #static: false,

  #-----------------------------------------------------------------------------
  # Specify custom mustache template directory.
  #
  # Equivalent to --template-dir [PATH]

  #template_dir: [PATH],

  #-----------------------------------------------------------------------------
  # Use _Template in root as a template for new pages. Must be committed.
  #
  # Equivalent to --template-page

  #template_page: true,

  #-----------------------------------------------------------------------------
  # Tell Gollum to use specific user icons for history view. Can be set to
  # gravatar, identicon or none.
  # Default: none.
  #
  # Equivalent to --user-icons [MODE]

  #user_icons: [MODE],

  ##############################################################################
  # Metadata (front matter)

  #-----------------------------------------------------------------------------
  # Header counting
  # Default: false
  # Can also be a pre-defined counter. See
  # https://www.w3.org/TR/css-counter-styles-3/#predefined-counters

  #header_enum: false,
  #header_enum: 'decimal-leading-zero',

  #-----------------------------------------------------------------------------
  # Global metadata. Arbitrary metadata that will be applied to each page.

  #metadata: {
  #  monkeyboys: 'are loose in the facility'
  #},

  ##############################################################################
  # Tips

  #-----------------------------------------------------------------------------
  # Force table of contents tag ([[_TOC_]]) into each page.
  # ??? How to set the level in the configuration file?
  # https://github.com/gollum/gollum/wiki#table-of-contents-toc-tag
  # Default: false

  #universal_toc: false,

  #-----------------------------------------------------------------------------
  # Move the sidebar to the left of the page
  # https://github.com/gollum/gollum/issues/1450#issuecomment-599124384

  #sidebar: :left,

  #-----------------------------------------------------------------------------
  # Change the home page name
  # https://github.com/gollum/gollum/issues/1569#issuecomment-633033895

  #index_page: 'index',

  #-----------------------------------------------------------------------------
  # Change the number of changes in the rss feed

  #pagination_count: 15
}

#-------------------------------------------------------------------------------
# Change default markup
#Precious::App.set(:default_markup, :asciidoc)

Precious::App.set(:wiki_options, wiki_options)

# plantUML local server
# localhost can not be used because this url is exposed outside
# https://plantuml.com/picoweb
Gollum::Filter::PlantUML.configure do |config|
  config.url = "http://192.168.100.5:8080/plantuml/svg"
end

# Set as Sinatra environment as production (no stack traces)
Precious::App.set(:environment, :production)

# Setup Omniauth via Omnigollum
require 'omnigollum'
require 'omniauth-ldap'

# adding gon-sinatra to retrieve session info in js
require 'gon-sinatra'

omnigollum_options = {
  # OmniAuth::Builder block is passed as a proc
  :providers => Proc.new do
    provider :ldap,
      :title => 'Active Directory Login',
      :host => '127.0.0.1',
      :port => 389,
      :method => :plain,
      :base => 'dc=example,dc=com',
      # https://github.com/omniauth/omniauth-ldap
      # https://github.com/arr2036/omnigollum/blob/master/config.rb.example
      # https://kimura.univ-montp2.fr/remydernat/gollum_install.html
      :name_proc => Proc.new {|name| name.gsub(/@.*$/,'')},
      :uid => 'uid',
      :bind_dn => 'cn=admin,dc=example,dc=com',
      :password => 'admin_pw'
  end,
  :dummy_auth => false,
  # Make the wiki private under any private or ediding page
  # from https://github.com/arr2036/omnigollum/issues/45
  :protected_routes => [
      '/private/*',
      '/private',
      '/revert/*',
      '/revert',
      '/create/*',
      '/create',
      '/edit/*',
      '/edit',
      '/login/*',
      '/login',
      '/rename/*',
      '/rename/',
      '/upload/*',
      '/upload/',
      '/delete/*',
      '/delete'
  ],
  # Specifiy commiter name as just the user name
  :author_format => Proc.new { |user| user.name },
  # Specify commiter e-mail as jsut the user e-mail
  :author_email => Proc.new { |user| user.email },

  # see omnigollum.rb OmniauthUser::initialize()
  # omniauth-ldap::adaptor.rb::bind_as()
  # ruby-net-ldap
  :authorized_users => ['user1', 'user2', 'user3'],
  :default_email => 'noname@example.com'
}

# :omigollum opitons *must* be set before the Omnigollum extension is registered
Precious::App.set(:omnigollum, omnigollum_options)
Precious::App.register Omnigollum::Sinatra

# hook for initialization
Gollum::Hook.register(:post_wiki_initialize, :hook_id) do |wiki|
  system('git pull origin master')
end

# hook for web edition
Gollum::Hook.register(:post_commit, :hook_id) do |committer, sha1|
  system('git pull origin master')
  system('git push origin master')
end

