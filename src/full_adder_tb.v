`timescale 1ns/10ps

module full_adder_tb;

    // Input signals
    reg A, B, Cin;

    // Output signals
    wire S, Cout;

    // Instantiate the full adder module
    full_adder uut(
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    // Set input signals
    initial begin
        A = 1'b0;
        B = 1'b1;
        Cin = 1'b0;

        // Wait for a specified time
        #10;

        // Check the outputs
        $display("Input: A=%b, B=%b, Cin=%b", A, B, Cin);
        $display("Output: S=%b, Cout=%b", S, Cout);

        // Finish the simulation
        $finish;
    end

endmodule
