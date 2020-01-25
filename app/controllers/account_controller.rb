class AccountController < ApplicationController

  def index
  end

  def new
    @incomes      = Income.new
    @expenditures = Expenditure.new
    now = Time.current
  end


  def expenditure_create
    @expenditure = Expenditure.create(expenditure_params)
    if @expenditure.save
      redirect_to new_account_path
    else
      render action: :new
    end
  end

  def income_create
    @income = Income.create(income_params)
    if @income.save
      redirect_to new_account_path
    else
      render action: :new
    end
  end


  private
  def income_params
    params.permit(:incsubject, :incamount)
  end

  def expenditure_params
    params.permit(:expsubject, :expamount)
  end

end
