\m4_TLV_version 1d: tl-x.org
\SV

   // =========================================
   // Welcome!  Try the tutorials via the menu.
   // =========================================

   // Default Makerchip TL-Verilog Code Template
   
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   


   
   |calc
      @0
         $reset = *reset;
      @1
         $valid_or_reset = $reset | $cnt;
         $val2[31:0] = $rand1[3:0];
         $op[1:0] = $rand2[1:0];
         $val1[31:0] = >>2$out[31:0];
         ?$valid_or_reset
            $sum[31:0] = $val1[31:0] + $val2[31:0];
            $prod[31:0] = $val1[31:0] * $val2[31:0];
            $diff[31:0] = $val1[31:0] - $val2[31:0];
            $quot[31:0] = $val1[31:0] / $val2[31:0];
      @2
         ?$valid_or_reset
            $out[31:0] = $reset ? 0 : ($op[1:0] == 2'b00) ? $sum[31:0] :
                                         ($op[1:0] == 2'b01) ? $diff[31:0] :
                                            ($op[1:0] == 2'b10) ? $prod[31:0] : $quot[31:0] ;
      @1
         $cnt = $reset ? 0 : (>>1$cnt + 1);
   

   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
