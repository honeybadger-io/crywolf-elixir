use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :crywolf, Crywolf.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :crywolf, Crywolf.Repo,
  adapter: Ecto.Adapters.Postgres,
  pool: Ecto.Adapters.SQL.Sandbox,
  username: "postgres",
  password: "postgres",
  database: "crywolf_test",
  size: 1 # Use a single connection for transactional tests

config :honeybadger, :environment_name, :test
