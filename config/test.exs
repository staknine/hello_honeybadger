import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :hello_honeybadger, HelloHoneybadger.Repo,
  username: "postgres",
  password: "postgres",
  database: "hello_honeybadger_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hello_honeybadger, HelloHoneybadgerWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "i0PtXLAnkb3GmjF+zv93HdKtgZybrooBcQl+g2zi9TOox1/irXCXnSHWqsMs1puX",
  server: false

# In test we don't send emails.
config :hello_honeybadger, HelloHoneybadger.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
