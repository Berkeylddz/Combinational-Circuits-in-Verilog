`timescale 1ns/10ps

module half_adder_tb;

    // Giriş sinyalleri
    reg A, B;

    // Çıkış sinyalleri
    wire SUM, CARRY;

    // Yarı toplayıcı modülünü çağır
    half_adder uut(
        .A(A),
        .B(B),
        .SUM(SUM),
        .CARRY(CARRY)
    );

    // Giriş sinyallerini belirle
    initial begin
        A = 1'b0;
        B = 1'b1;

        // Bekleme süresi
        #10;

        // Çıkışları kontrol et
        $display("Giriş: A=%b, B=%b", A, B);
        $display("Çıkış: SUM=%b, CARRY=%b", SUM, CARRY);

        // İkinci durumu test etmek için giriş sinyallerini değiştir
        A = 1'b1;
        B = 1'b1;

        // Bekleme süresi
        #10;

        // Yeni çıkışları kontrol et
        $display("Giriş: A=%b, B=%b", A, B);
        $display("Çıkış: SUM=%b, CARRY=%b", SUM, CARRY);

        // Simülasyonu sonlandır
        $finish;
    end

endmodule
