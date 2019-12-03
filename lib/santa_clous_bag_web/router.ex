defmodule SantaClousBagWeb.Router do
  use SantaClousBagWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SantaClousBagWeb do
    pipe_through :api
  end
end
