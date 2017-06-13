defmodule Tindahan.Repo.Migrations.CreateTindahan.Accounts.User do
  use Ecto.Migration

  def change do
    create table(:accounts_users, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :email, :string
      add :firstname, :string
      add :lastname, :string
      add :middlename, :string
      add :password_hash, :string
      add :is_admin, :boolean, default: false, null: false

      timestamps()
    end

  end
end
