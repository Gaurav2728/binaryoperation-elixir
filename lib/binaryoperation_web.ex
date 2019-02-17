defmodule BinaryoperationWeb do
  @moduledoc """
  The entrypoint for defining your web interface, such
  as controllers, views, channels and so on.

  This can be used in your application as:

      use BinaryoperationWeb, :controller
      use BinaryoperationWeb, :view

  The definitions below will be executed for every view,
  controller, etc, so keep them short and clean, focused
  on imports, uses and aliases.

  Do NOT define functions inside the quoted expressions
  below. Instead, define any helper function in modules
  and import those modules here.
  """

  def controller do
    quote do
      use Phoenix.Controller, namespace: BinaryoperationWeb
      import Plug.Conn

    end
  end

  def view do
    quote do
      use Phoenix.View, root: "lib/binaryoperation_web/templates",
                        namespace: BinaryoperationWeb

      # Import convenience functions from controllers
      import Phoenix.Controller, only: [get_flash: 2, view_module: 1]

      # Use all HTML functionality (forms, tags, etc)
      use Phoenix.HTML

      import BinaryoperationWeb.Router.Helpers
      import BinaryoperationWeb.ErrorHelpers
      import BinaryoperationWeb.Gettext
    end
  end

  def router do
    quote do
      use Phoenix.Router

    end
  end

  def channel do
    quote do

    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
