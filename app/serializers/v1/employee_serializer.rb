class V1::EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :designation, :manager

  def manager
    {
      id: object.manager.id,
      name: object.manager.name
    }
  end
end

