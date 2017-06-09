# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tindahan,
  ecto_repos: [Tindahan.Repo]

# Configures the endpoint
config :tindahan, Tindahan.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1m0EsJrGKNThapMwIswKPkXUMYTeWzBN4N2a/Exjlx2XFw+y3bRtGQsiMcCPnrY5",
  render_errors: [view: Tindahan.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Tindahan.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
