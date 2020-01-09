class Transfer
  attr_accessor :sender, :reciever, :status, :amount 
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
      @sender.balance - @amount
      @receiver.balance + @amount
      @status = 'complete'
    else 
      @status = 'rejected'
    end
  end 
  #def reverse_transfer
   # if self.execute_transaction 
    #  @receiver - @transfer_amount}
     # @sender + #{@transfer_amount}
    #end 
  #end 
end 
