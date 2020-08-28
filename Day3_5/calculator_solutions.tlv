\m4_TLV_version 1d: tl-x.org
\SV
//Calculator labs solutions here
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
   $reset = *reset;
   $val1[31:0] = $rand1[3:0];
   $val2[31:0] = $rand2[3:0];
   //$op[1:0] = 2'b11;
   //ADD
   $sum[31:0] = $val1 + $val2;
   //SUB
   $diff[31:0] = $val1 - $val2;
   //MUL
   $prod[31:0] = $val1 * $val2;
   //DIV
   $quot[31:0] = $val1 / $val2;
   
   $out[31:0] = $op[1] ? ( $op[0] ? $quot : $prod ) : ( $op[0] ? $diff : $sum );
   
   //$out[7:0] = $sel ? $in1[7:0] : $in2[7:0];  //Vector_MUX
   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
