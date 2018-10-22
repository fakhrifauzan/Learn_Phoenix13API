defmodule Phoenix13apiWeb.Router do
  use Phoenix13apiWeb, :router

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

  # scope "/", Phoenix13apiWeb do
  #   pipe_through :browser # Use the default browser stack

  #   get "/", PageController, :index
  # end

  # Other scopes may use custom stacks.
  scope "/api/v1", Phoenix13apiWeb do
    pipe_through :api

    get "/users", UserController, :index
  end
end
