# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :crywolf,
  ecto_repos: [Crywolf.Repo]

# Configures the endpoint
config :crywolf, CrywolfWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DpqjDvQZN7sHC+7r6gsS9H6oqB2kkQJcu8KmHkxBK92J2M/6RE+EIOL8ElvBO8Vn",
  render_errors: [view: CrywolfWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Crywolf.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Configure Honeybadger
config :honeybadger,
  app: :crywolf,
  exclude_envs: [:test],
  use_logger: true

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
