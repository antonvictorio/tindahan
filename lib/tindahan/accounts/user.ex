defmodule Tindahan.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Tindahan.Accounts.User

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  @timestamps_opts [usec: false]

  schema "accounts_users" do
    field :email, :string
    field :is_admin, :boolean, default: false
    field :firstname, :string
    field :lastname, :string
    field :middlename, :string
    field :password, :string, virtual: true
    field :password_hash, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:email, :firstname, :lastname, :middlename, :is_admin])
    |> validate_required([:email])
  end
end
