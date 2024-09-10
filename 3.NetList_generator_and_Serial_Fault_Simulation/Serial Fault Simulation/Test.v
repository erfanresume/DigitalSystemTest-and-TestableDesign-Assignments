`timescale 1 ns / 1ns

module Test ();
  
  reg  ai=0, bi=0, ci=0, di=0, ei=0, fi=0;
  wire woG, woF;
  integer testFile, faultFile, reportFile, status;
  real faultCount, detectedFault;
  reg[5:0] testVector;
  reg [8*60:1] wireName;
  reg stuckAtVal;
  
  
  CKT GUT (ai, bi, ci, di, ei, fi, woG);
  CKT FUT (ai, bi, ci, di, ei, fi, woF);
  
  initial begin
    $FaultCollapsing (Test.FUT, "CKT.flt"); 
    repeat (15) #73 {ai, bi, ci, di, ei, fi} = {ai, bi, ci, di, ei, fi} + 1;
  end 
   
  initial begin
    faultCount = 0;
    detectedFault = 0;
    
    faultFile = $fopen("CKT.flt", "r"); 
    reportFile= $fopen("CKT.det", "w"); 
    while( ! $feof(faultFile)) begin
      status = $fscanf(faultFile,"%s s@ %b \n",wireName, stuckAtVal); 
      $InjectFault ( wireName , stuckAtVal);
      testFile = $fopen("CKT.tst", "r"); 
      while(!$feof(testFile)) begin 
        #30;
        status = $fscanf(testFile,"%b\n", testVector); 
        {ai, bi, ci, di, ei, fi} = testVector;
        #60;
        if (woG != woF) begin
          detectedFault = detectedFault + 1;
          $fdisplay(reportFile,"Fault: %0s S@%b was detected by TestVector=%b and time=%0tns.",wireName,stuckAtVal,{ai, bi, ci, di, ei, fi}, $time);
        end//end if
      end //while eof tes
      $RemoveFault(wireName);
      #40; 
      faultCount = faultCount + 1;
    end//while eof faults 
    $fdisplay(reportFile,"Coverage = %f\n",((detectedFault/faultCount) *100));
    $stop;
  end// end of initial
endmodule