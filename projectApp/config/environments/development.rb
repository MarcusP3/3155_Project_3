Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.
  # Whitelist one hostname
  config.hosts << "70d1f6ab42014f349a7d1c0ce8bf677d.vfs.cloud9.us-east-2.amazonaws.com"
  config.hosts << "dff06a231b2b4deeaf24ce86a7b98e94.vfs.cloud9.us-east-2.amazonaws.com" #FOR MYA
  config.hosts << "0bf7c47fed55424bb0792a41a6f216b8.vfs.cloud9.us-east-2.amazonaws.com" #Marcus
  config.hosts << "4336740b245047e195e5c9c04b051756.vfs.cloud9.us-east-2.amazonaws.com" #Chase
  config.hosts << "02e18bf9479943fc880f09caad57c74d.vfs.cloud9.us-east-2.amazonaws.com" #MarcusNumber2
  # Whitelist a test domain
  config.hosts << /application\.local\Z/
  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  # Run rails dev:cache to toggle caching.
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Store uploaded files on the local file system (see config/storage.yml for options).
  config.active_storage.service = :local

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations.
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
end
