class Transfer
  attr_accessor :sender, :receiver, :status, :amount 
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end 
  def valid?
    if @sender.valid? && @receiver.valid?
      true 
    end 
  end 
  def execute_transaction
    if self.valid? == true 
      @sender.balance + @amount
      @receiver.balance - @amount
      @status = 'complete'
    else 
      @status = 'rejected'
      puts "Transaction rejected. Please check your bank account."
    end
  end 
  #def reverse_transfer
   # if self.execute_transaction 
    #  @receiver - @transfer_amount}
     # @sender + #{@transfer_amount}
    #end 
  #end 
end 
