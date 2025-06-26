module function_f4_Yukhymchuk(x1, x2, x3, fnor_nor, fnand_nand);
  input x1, x2, x3;
  output fnor_nor, fnand_nand;
  assign fnand_nand = ~(~(~x3&x1)&~(~x2&x1)&~(~x3&~x2));
  assign fnor_nor = ~(~(~x3|x1)|~(~x2|x1)|~(~x3|~x2));
endmodule
