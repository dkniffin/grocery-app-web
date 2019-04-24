class CreateList::V20190424073610 < Avram::Migrator::Migration::V1
  def migrate
    create :lists do
      add_belongs_to user : User, on_delete: :nullify
    end
  end

  def rollback
    drop :things
  end
end
