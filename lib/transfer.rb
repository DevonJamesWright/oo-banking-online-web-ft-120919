class Transfer
  attr_accessor :sender, :receiver, :status, :amount 
  def initialize(sender,receiver,amount = 50)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end 
  def valid?
    if @sender.valid? && @receiver.valid?
      true 
    else 
      false 
    end 
  end 
  def execute_transaction
    if @sender.valid? && @receiver.valid? == true 
      @sender.balance - @amount
      @receiver.balance + @amount
      @status = 'complete'
    else 
      @status = 'rejected'
      p "Transaction rejected. Please check your account balance."
    end
  end 
  def reverse_transfer
    if self.execute_transaction 
      @receiver.balance - @amount
      @sender.balance + @amount
    end 
  end 
end 
