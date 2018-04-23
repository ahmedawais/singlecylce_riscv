#include "ap_int.h"
#include "ins_memory.h"

extern Instruction *pProgramCounter;
//extern void writeToGRegX1(Instruction *pAdd);
void writeToGRegX1(ap_int<32> Add);

ap_int<7> GetOpcode(Instruction *pProgramCounter);

void ALU (ap_int <32> rS1, ap_int <32> rS2, ap_int <12> immed, ap_int <5> immed2, ap_int <20> immed3, ap_int <32> * rD, Instruction  *branchjump) {
	 ap_int <7> opcode = GetOpcode(pProgramCounter);

	 switch (opcode){

	 case  ADD_OPCODE:
            *rD = rS1+rS2;
		 break ;
	 case  ADDI_OPCODE:
		 *rD= rS1 + immed ;
	 		 break ;
	 case  SUB_OPCODE:
		 *rD= rS1-rS2 ;
	 		 break ;
	 case  MUL_OPCODE:
		 *rD= rS1 * rS2 ;
	 		 break ;

	 case  LW_OPCODE:
            rS1 + immed ;
	 		 break ;
	 case  SW_OPCODE:
            rS1 + immed + immed2 ;
	 		 break ;
	 case  JUMP_OPCODE:

	 		 break ;
	 case  JAL_OPCODE:
            pProgramCounter = pProgramCounter + immed3;               //  read immediate value and jump to Rd
	 		break ;
	 case  JALR_OPCODE:
	 {
		 	//ap_int<32> pAdd = pProgramCounter;
		 	//writeToGRegX1(pAdd);
		 	pProgramCounter = pProgramCounter + immed3;
	 }
	 		break ;
	 case  AND_OPCODE:
		 *rD= rS1 & rS2;
	 		 break ;
	 case  OR_OPCODE:
		 *rD= rS1 | rS2;
	 		 break ;
	 case  BEQ_OPCODE:
             if (rS1 == rS2){
            	 pProgramCounter = branchjump;
            	  };
	 		 break ;
	 case  SLL_OPCODE:
            *rD = rS1 << rS2 ;
	 		 break ;

	 case  SRL_OPCODE:
		 *rD = rS1 >> rS2 ;
	 		 break ;
	 case  BNE_OPCODE:
		 if (rS1 != rS2){
		     pProgramCounter = branchjump;
		 }
	 		 break ;
	 default:
		 // Generate Error
		 break;
	} // switch
};


















