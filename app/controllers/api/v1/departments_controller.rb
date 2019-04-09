class Api::V1::DepartmentsController < ApplicationController

  def index
    @departments = Department.all
    render json: @departments
  end


  def show
    @department = Department.find(params[:id])
    render json: @department, status: :ok
  end

  private

  def department_params
    params.require(:department).permit(:name)
  end


end
