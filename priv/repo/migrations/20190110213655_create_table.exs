defmodule Binaryoperation.Repo.Migrations.CreateTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :full_name, :string
      add :email, :string
      add :message, :text

      timestamps()
    end
  end
end
