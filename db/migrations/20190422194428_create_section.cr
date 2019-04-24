class CreateSection::V20190422194428 < Avram::Migrator::Migration::V1
  def migrate
    create :sections do
      add name : String
      add_belongs_to store : Store, on_delete: :nullify
    end
  end

  def rollback
    drop :sections
  end
end
