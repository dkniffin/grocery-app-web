class CreateStore::V20190422194420 < Avram::Migrator::Migration::V1
  def migrate
    create :stores do
      name : String
    end
  end

  def rollback
    drop :stores
  end
end
