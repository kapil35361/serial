class V1::ManagerSerializer < ActiveModel::Serializer
  attributes :id , :name , :employees


  def employees
    object.employees.map do|e|
      {
        id: e.id,
        name: e.name,
        email: e.email,
        salary: e.salary,
        designation: e.designation

      }
       
    end
  end
end
