class CreateItem::V20190422194246 < Avram::Migrator::Migration::V1
  def migrate
    create :items do
      add name : String
      add unit : String?
    end
  end

  def rollback
    drop :items
  end
end
