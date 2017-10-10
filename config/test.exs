use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :crywolf, CrywolfWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :crywolf, Crywolf.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "crywolf_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# Configure Honeybadger
config :honeybadger, :environment_name, :test
