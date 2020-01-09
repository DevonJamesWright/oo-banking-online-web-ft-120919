class Transfer
  attr_accessor :sender, :reciever, :status, :transfer_amount 
  def initialize(sender,receiver,transfer_amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @transfer_amount = transfer_amount
  end 
  def valid?
    if @sender.valid? && @receiver.valid?
      true 
    end 
  end 
  def execute_transaction
end

