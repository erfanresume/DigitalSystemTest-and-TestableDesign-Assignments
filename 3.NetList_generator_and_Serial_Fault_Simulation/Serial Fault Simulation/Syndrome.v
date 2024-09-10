`timescale 1 ns / 1ns

module Syndrome();
  
parameter tstCount = 6; //number of test
reg ai=0, bi=0, ci=0, di=0, ei=0, fi=0;
wire woG, woF;
reg detected = 0;
integer i;
integer testFile, faultFile, dictionaryFile, status;
reg [5:0] testVector;
reg [8*60:1] wireName;
reg [tstCount-1:0] syndrome;
reg stuckAtVal;

CKT GUT (ai, bi, ci, di, ei, fi, woG);
CKT FUT (ai, bi, ci, di, ei, fi, woF);


/*initial begin
    $FaultCollapsing (Syndrome.FUT, "CKT.flt"); 
    repeat (15) #73 {ai, bi, ci, di, ei, fi} = {ai, bi, ci, di, ei, fi} + 1;
end*/ 

initial begin
    faultFile = $fopen("CKT.flt", "w"); 
    $FaultCollapsing(Syndrome.FUT, "CKT.flt"); 
    $fclose(faultFile);
    dictionaryFile = $fopen("CKT.dct", "w"); 
    faultFile = $fopen("CKT.flt", "r");
     
    while( ! $feof(faultFile)) begin
      i = 0; 
      status = $fscanf(faultFile,"%s s@%b\n",wireName,stuckAtVal);
      $InjectFault ( wireName , stuckAtVal); 
      testFile = $fopen("CKT.tst", "r");
      detected = 1'b0;
      while((!$feof(testFile))) begin
        #30; 
        status = $fscanf(testFile,"%b\n", testVector);
        {ai, bi, ci, di, ei, fi} = testVector; 
        #60;
        if (woG != woF) begin
          syndrome[i] = 1;
         end else
          syndrome[i] = 0;
          i = i + 1;
      end //while eof test
        $RemoveFault(wireName);
        $fdisplay(dictionaryFile, "%0s,Fault Type=S@%b,Syndrome=%b\n",wireName,stuckAtVal, syndrome);
        #30;
    end// while eof faults 
        $fclose(dictionaryFile);
        $stop;
end// end of initial
endmodule
