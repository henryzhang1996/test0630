// Generator : SpinalHDL v1.4.0    git head : ecb5a80b713566f417ea3ea061f9969e73770a7f
// Date      : 04/06/2021, 17:35:16
// Component : MyTopLevel



module MyTopLevel (
  input               io_cond0,
  input               io_cond1,
  output              io_flag,
  output     [7:0]    io_state,
  input               clk,
  input               reset 
);
  reg        [7:0]    counter;

  assign io_state = counter;
  assign io_flag = ((counter == 8'h0) || io_cond1);
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      counter <= 8'h0;
    end else begin
      if(io_cond0)begin
        counter <= (counter + 8'h01);
      end
    end
  end


endmodule
