class UserTransactionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user_transaction

  def index
    @user_transactions = @group.user_transactions.order(created_at: :desc)
  end

  def new
    @user_transaction = UserTransaction.new
  end

  def create
    @user_transaction = @group.user_transactions.new(user_transaction_params)
    @user_transaction.author_id = current_user.id
    respond_to do |format|
      if @user_transaction.save
        format.html { redirect_to group_user_transactions_path, notice: 'User transaction was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_user_transaction
    @group = Group.find(params[:group_id])
  end

  def user_transaction_params
    params.require(:user_transaction).permit(:name, :amount)
  end
end
