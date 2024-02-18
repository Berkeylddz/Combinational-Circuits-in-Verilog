`timescale 1ns/10ps

module multiplier_tb;

    // Giriş sinyalleri
    reg [2:0] A, B;

    // Çıkış sinyalleri
    wire [5:0] P;

    // Çarpan modülünü çağır
    multiplier uut(
        .A(A),
        .B(B),
        .P(P)
    );

    // Giriş sinyallerini belirle
    initial begin
        A = 3'b001;
        B = 3'b010;

        // Bekleme süresi
        #10;

        // Çıkışları kontrol et
        $display("Giriş: A=%b, B=%b", A, B);
        $display("Çıkış: P=%b", P);

        // Simülasyonu sonlandır
        $finish;
    end

endmodule
