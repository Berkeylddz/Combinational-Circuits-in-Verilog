`timescale 1ns/10ps

module half_adder(
    input A, B,
    output S, C
);

	// Çıkış sinyallerini hesapla
	assign S = A ^ B;  // XOR işlemi toplama işlemini gerçekleştirir
	assign C = A & B;  // AND işlemi taşıma hesaplar

endmodule
