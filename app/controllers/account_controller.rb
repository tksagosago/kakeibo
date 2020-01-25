class AccountController < ApplicationController

  def index
  end

  def new
    @incomes      = Income.new
    @expenditures = Expenditure.new
    now = Time.current
    @exp_graph_data = []

    @billing = Expenditure.where(expsubject: "課金", created_at: now.all_month)
    @billing_sum = 0
    @billing.each do |billing|
      @billing_sum += billing.expamount
      @exp_graph_data << @billing_sum
    end

    @food = Expenditure.where(expsubject: "食費", created_at: now.all_month)
    @food_sum = 0
    @food.each do |food|
      @food_sum += food.expamount
    end

    @daily_necces = Expenditure.where(expsubject: "日用品費", created_at: now.all_month)
    @daily_necces_sum = 0
    @daily_necces.each do |daily_necces|
      @daily_necces_sum += daily_necces.expamount
    end

    @utility = Expenditure.where(expsubject: "水道光熱費", created_at: now.all_month)
    @utility_sum = 0
    @utility.each do |utility|
      @utility_sum += utility.expamount
    end

    @entertainment = Expenditure.where(expsubject: "娯楽費", created_at: now.all_month)
    @entertainment_sum = 0
    @entertainment.each do |entertainment|
      @entertainment_sum += entertainment.expamount
    end

    @rent = Expenditure.where(expsubject: "家賃", created_at: now.all_month)
    @rent_sum = 0
    @rent.each do |rent|
      @rent_sum += rent.expamount
    end

    @mobile = Expenditure.where(expsubject: "通信費", created_at: now.all_month)
    @mobile_sum = 0
    @mobile.each do |mobile|
      @mobile_sum += mobile.expamount
    end

    @scholarship = Expenditure.where(expsubject: "奨学金", created_at: now.all_month)
    @scholarship_sum = 0
    @scholarship.each do |scholarship|
      @scholarship_sum += scholarship.expamount
    end

    @others = Expenditure.where(expsubject: "その他", created_at: now.all_month)
    @others_sum = 0
    @others.each do |others|
      @others_sum += others.expamount
    end

    @salary = Income.where(incsubject: "給与", created_at: now.all_month)
    @salary_sum = 0
    @salary.each do |salary|
      @salary_sum += salary.incamount
    end

    @inc_others = Income.where(incsubject: "雑益", created_at: now.all_month)
    @inc_others_sum = 0
    @inc_others.each do |inc_others|
      @inc_others_sum += inc_others.incamount
    end

    @exp_all = Expenditure.where(created_at: now.all_month)
    @exp_all_sum = 0
    @exp_all.each do |exp_all|
      @exp_all_sum += exp_all.expamount
    end

    @inc_all = Income.where(created_at: now.all_month)
    @inc_all_sum = 0
    @inc_all.each do |inc_all|
      @inc_all_sum += inc_all.incamount
    end

    @profit = @inc_all_sum - @exp_all_sum
    
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
