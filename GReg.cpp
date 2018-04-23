#include "ap_int.h"
#include "ins_memory.h"
/* X0 always 0 */   const ap_int <32>       X0= 0;

typedef ap_int <32> GRegister_Values;
void GReg_func(ap_int<5> rS1, ap_int<5> rS2, ap_int<6> rDorImmed);

//void writeToGRegX1(Instruction *pAdd);
void writeToGRegX1(GRegister_Values Add);
void ALU (ap_int <32> rS1, ap_int <32> rS2, ap_int <12> immed, ap_int <5> immed2, ap_int <20> immed3, ap_int <32> * rD, Instruction  *branchjump);


GRegister_Values GReg [31]= {

    /* X1 JALR useage addr*/   0,
    /* X2*/                    0,
    /* X3*/                    0,
    /* X4*/                    0,
    /* X5*/                    0,
    /* X6*/                    0,
    /* X7*/                    0,
    /* X8*/                    0,
    /* X9*/                    0,
    /* X10*/                   0,
   /* X11*/                    0,
   /* X12*/                    0,
    /* X13*/                   0,
   /* X14*/                    0,
   /* X15*/                    0,
   /* X16*/                    0,
   /* X17*/                    0,
   /* X18*/                    0,
    /* X19*/                   0,
   /* X20*/                    0,
   /* X21*/                    0,
  /* X22*/                     0,
   /* X23*/                    0,
  /* X24*/                     0,
   /* X25*/                    0,
   /* X26*/                    0,
   /* X27*/                    0,
  /* X28*/                     0,
   /* X29*/                    0,
   /* X30*/                    0,
  /* X31*/                     0
  };

void writeToGRegX1(GRegister_Values Add){
	GReg[0] = Add;
}

void GReg_func(ap_int<5> rS1, ap_int<5> rS2, ap_int<6> rDorImmed) {
	ap_int<32> r1 = rS1;
	ap_int<32> r2 = rS2;
	ap_int<32> immed = rDorImmed;

	ALU(r1, r2, 0,0,0, &immed, NULL);
}
