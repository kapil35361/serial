module V1
    class EmployeesController < ApplicationController
  
      def index
        employees = Employee.all.includes(:manager)  
#   // used includes method to prevent N-Query problem
        
        render json: {
          data: ActiveModelSerializers::SerializableResource.new(employees, each_serializer: EmployeeSerializer),
          message: ['Employee list fetched successfully'],
          status: 200,
          type: 'Success'
        }
      end
  
      def show
        employee = Employee.find(params[:id])
        
        render json: {
          data: ActiveModelSerializers::SerializableResource.new(employee, serializer: EmployeeSerializer),
          message: ['Employee profile fetched successfully'],
          status: 200,
          type: 'Success'
        }
      end
    end
  end
