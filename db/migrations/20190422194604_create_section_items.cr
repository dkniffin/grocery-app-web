class CreateSectionItems::V20190422194604 < Avram::Migrator::Migration::V1
  def migrate
    create :section_items do
      add_belongs_to section : Section, on_delete: :nullify
      add_belongs_to item : Item, on_delete: :nullify
    end
  end

  def rollback
    drop :section_items
  end
end
