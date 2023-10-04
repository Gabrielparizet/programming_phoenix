defmodule ProgrammingPhoenixWeb.HelloController do
  use ProgrammingPhoenixWeb, :controller

  # def world(conn, params) do

  #   render(conn, "world.html")
  #   render(conn, :world) #(conn, :world, layout: false)
  # end

  def world(conn, %{"name" => name}) do
    render(conn, "world.html", name: name)
  end

end
