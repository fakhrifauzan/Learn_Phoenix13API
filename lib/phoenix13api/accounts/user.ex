defmodule Phoenix13api.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :age, :integer
    field :email, :string
    field :password, :string
    field :stooge, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :password, :age, :stooge])
    |> validate_required([:email, :password, :age, :stooge])
  end
end
