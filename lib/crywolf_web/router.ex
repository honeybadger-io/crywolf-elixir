defmodule CrywolfWeb.Router do
  use CrywolfWeb, :router
  use Honeybadger.Plug

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CrywolfWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    get "/runtime_error", PageController, :runtime_error

    get "/key_error", PageController, :key_error

    get "/async_error", PageController, :async_error
  end

  # Other scopes may use custom stacks.
  # scope "/api", CrywolfWeb do
  #   pipe_through :api
  # end
end
