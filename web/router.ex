defmodule Crywolf.Router do
  use Crywolf.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Crywolf do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    get "/runtime_error", PageController, :runtime_error

    get "/key_error", PageController, :key_error
  end

  # Other scopes may use custom stacks.
  # scope "/api", Crywolf do
  #   pipe_through :api
  # end
end
