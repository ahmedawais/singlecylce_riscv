#include "ap_int.h"

//void ins_memory(volatile in ap_int <32>, volatile out ap_int <32> )

struct rTypeInst {  // Arithmetic Instructions
	ap_int<7> opcode;	// LSB
	ap_int<5> rd;
	ap_int<3> funct3;
	ap_int<5> rs1;
	ap_int<5> rs2;
	ap_int<7> funt7;	// MSB
} ;

struct iTypeInst { // Load and Immediate Arithmetic
	ap_int<7> opcode;   // LSB
	ap_int<5> rd;
	ap_int<3> funct3;
	ap_int<5> rs1;
	ap_int<12> immediate;  // MSB
} ;

struct sTypeInst {  // Stores
	ap_int <7> opcode; // LSB
	ap_int <5> immed;
	ap_int <3> funct3;
	ap_int <5> rs1;
	ap_int <5> rs2;
	ap_int <7> immed2;   //MSB
} ;

struct sbTypeInst {  // Conditional Branch Format
	ap_int <7> opcode; //LSB
	ap_int <5> immed;
	ap_int <3> funct3;
	ap_int <5> rs1;
	ap_int <5> rs2;
	ap_int <7> immed2;  // MSB
} ;

struct ujTypeInst { // Unconditional Jump Format
	ap_int<7> opcode;  // LSB
	ap_int<5> rd;
	ap_int<20> immed;  // MSB
};

struct uTypeInst { // Upper Immediate Format
	ap_int <7> opcode;
	ap_int <5> rd;
	ap_int <20> immed;
};

enum InstName{
	ADD,	// Add
	ADDI,	// Add Immediate
	SUB,	// Subtract
	MUL,	// Multiplication
	LW,		// Load Word
	SW,		// Store Word
	Jump,	// Jump
	JAL, 	// Jump and Link
	JALR,	// Jump and Link Register
	AND,	// Logical AND
	OR,		// Logical OR
	BEQ,	// Branch if Equal
	BNE,	// Branch if not Equal
	SLL,	// Shift Lift Logical
	SRL,	// Shift Right Logical
	NUM_OF_INSTRUCTIONS
} ;

#define ADD_OPCODE		  51
#define ADDI_OPCODE		  52          // changed
#define SUB_OPCODE 		  53          // changed
#define MUL_OPCODE 		  54           // changed
#define LW_OPCODE 		  3                     
#define SW_OPCODE 		  35                    
#define JUMP_OPCODE       55                      // not given
#define JAL_OPCODE		  111                  
#define JALR_OPCODE		  103
#define AND_OPCODE 		  56                    // changed
#define OR_OPCODE 		  57          // changed
#define BEQ_OPCODE 		  104                  // changed
#define SLL_OPCODE 		  105          // changed
#define SRL_OPCODE 		  106         // changed
#define BNE_OPCODE 		  107           // changed

// rType Instruction
#define NUM_OF_RTYPE_INSTRUCTIONS	7
#define NUM_OF_ITYPE_INSTRUCTIONS	3
#define NUM_OF_STYPE_INSTRUCTIONS	1
#define NUM_OF_UJTYPE_INSTRUCTIONS	2
#define NUM_OF_SBTYPE_INSTRUCTIONS 	2


struct Instruction {

#define R_TYPE_INSTRUCTION	0
#define I_TYPE_INSTRUCTION  1
#define S_TYPE_INSTRUCTION	2
#define SB_TYPE_INSTRUCTION	3
#define UJ_TYPE_INSTRUCTION	4
//#define U_TYPE_INSTRUCTION	5

	InstName	name;
	unsigned char 	format_Sel;
	ap_int<5> 	entryIndex;
};


