`timescale 1ns/10ps

module multiplier (
    input [2:0] A, B,
    output [5:0] P
);

	// Çıkış sinyalini hesapla
	assign P = A * B;

endmodule
