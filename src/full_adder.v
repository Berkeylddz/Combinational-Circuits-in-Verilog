`timescale 1ns/10ps

module full_adder(
    input A, B, Cin,
    output S, Cout
);

    // Çıkış sinyallerini hesapla
    assign S = A ^ B ^ Cin;  // XOR işlemi toplama işlemini gerçekleştirir
    assign Cout = (A & B) | (B & Cin) | (A & Cin);  // Taşıma sinyalini hesapla

endmodule
