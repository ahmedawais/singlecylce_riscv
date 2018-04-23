#include "ins_memory.h"

extern void GReg_func(ap_int<5> rS1, ap_int<5> rS2, ap_int<6> rDorImmed);

extern ap_int<5> DataReg[32];

rTypeInst arithematic[NUM_OF_RTYPE_INSTRUCTIONS] =
{
		{/*Opcode*/ADD_OPCODE, /*Rd*/DataReg[2], /*Funct3*/"0b000", /*rs1*/DataReg[1], /*rs2*/DataReg[0], /*Funct7*/"0b0000000"},
		{/*Opcode*/SUB_OPCODE, /*Rd*/DataReg[3], /*Funct3*/"0b000", /*rs1*/DataReg[4], /*rs2*/DataReg[5], /*Funct7*/"0b0000000"},
		{/*Opcode*/MUL_OPCODE, /*Rd*/DataReg[6], /*Funct3*/"0b000", /*rs1*/DataReg[7], /*rs2*/DataReg[8], /*Funct7*/"0b0000000"},
		{/*Opcode*/AND_OPCODE, /*Rd*/DataReg[9], /*Funct3*/"0b111", /*rs1*/DataReg[10], /*rs2*/DataReg[11], /*Funct7*/"0b0000000"},
		{/*Opcode*/OR_OPCODE,  /*Rd*/DataReg[12], /*Funct3*/"0b110", /*rs1*/DataReg[13], /*rs2*/DataReg[14], /*Funct7*/"0b0000000"},
		{/*Opcode*/SLL_OPCODE, /*Rd*/DataReg[15], /*Funct3*/"0b001", /*rs1*/DataReg[16], /*rs2*/DataReg[17], /*Funct7*/"0b0000000"},
		{/*Opcode*/SRL_OPCODE, /*Rd*/DataReg[18], /*Funct3*/"0b101", /*rs1*/DataReg[19], /*rs2*/DataReg[20], /*Funct7*/"0b0000000"}
};

iTypeInst load[NUM_OF_ITYPE_INSTRUCTIONS] = {
	{/*Opcode*/ADDI_OPCODE, /*Rd*/DataReg[21], /*Funct3*/"0b000", /*rs1*/DataReg[22], /*immediate*/0},
	{/*Opcode*/LW_OPCODE, /*Rd*/DataReg[23], /*Funct3*/"0b010", /*rs1*/DataReg[24], /*immediate*/0},
	{/*Opcode*/JALR_OPCODE, /*Rd*/DataReg[25], /*Funct3*/"0b000", /*rs1*/DataReg[26], /*immediate*/0}
};

sTypeInst store[NUM_OF_STYPE_INSTRUCTIONS] = {
	{/*Opcode*/SW_OPCODE, /*immed*/0, /*Funct3*/"0b010", /*rs1*/0,/*rs2*/0, /*immediate*/0}
};

ujTypeInst uncond_jump[NUM_OF_UJTYPE_INSTRUCTIONS] = {
	{/*Opcode*/JUMP_OPCODE,/*Rd*/0, /*immed*/0},
	{/*Opcode*/JAL_OPCODE,/*Rd*/0, /*immed*/0}
};

sbTypeInst branch[NUM_OF_SBTYPE_INSTRUCTIONS] = {
	{/*Opcode*/BEQ_OPCODE, /*immed1*/0, /*Funct3*/"0b000", /*rs1*/0, /*rs2*/0, /*immed2*/"0b0000000"},
	{/*Opcode*/BEQ_OPCODE, /*immed1*/0, /*Funct3*/"0b001", /*rs1*/0, /*rs2*/0, /*immed2*/"0b0000000"}
};




Instruction instSet[NUM_OF_INSTRUCTIONS] = {
	{ADD, R_TYPE_INSTRUCTION, 0},
	{ADDI, I_TYPE_INSTRUCTION, 0},// },
	{SUB, R_TYPE_INSTRUCTION, 1},
	{MUL, R_TYPE_INSTRUCTION, 2 },
	{LW, I_TYPE_INSTRUCTION, 1},//
	{SW, S_TYPE_INSTRUCTION, 0},//
	{Jump, UJ_TYPE_INSTRUCTION, 0},//
	{JAL, UJ_TYPE_INSTRUCTION, 1},//
	{JALR, I_TYPE_INSTRUCTION, 2},//
	{AND, R_TYPE_INSTRUCTION, 3},
	{OR, R_TYPE_INSTRUCTION, 4},
	{BEQ, SB_TYPE_INSTRUCTION, 0},//
	{BNE, SB_TYPE_INSTRUCTION, 1},//
	{SLL, R_TYPE_INSTRUCTION, 5},
	{SRL, R_TYPE_INSTRUCTION, 6},
};

// Program Counter Module
Instruction *pProgramCounter = &instSet[0];


void singlecycle_riscv (volatile ap_int<32> startingInst, volatile ap_int<6> immediate)
{
#pragma HLS INTERFACE ap_hs port=immediate
#pragma HLS INTERFACE ap_hs port=startingInst
	startingInst = 0;
	ap_int<5> rs1;
	ap_int<5> rs2;
	ap_int<6> immed = immediate;


for (int i=0; i <= 14; i++)
{
	switch (pProgramCounter->format_Sel)
	{
	case R_TYPE_INSTRUCTION:
		// arithematic
		rs1 = arithematic[pProgramCounter->entryIndex].rs1;
		rs2 = arithematic[pProgramCounter->entryIndex].rs2;

		break;

	case I_TYPE_INSTRUCTION:
		// load
		rs1 = load[pProgramCounter->entryIndex].rs1;
		rs2 = load[pProgramCounter->entryIndex].immediate & 0x0F10;
		immed = load[pProgramCounter->entryIndex].immediate & 0x007F;
		break;

	case S_TYPE_INSTRUCTION:
		// S Type
		rs1 = store[pProgramCounter->entryIndex].rs1;
		rs2 = store[pProgramCounter->entryIndex].rs2;

		immed = store[pProgramCounter->entryIndex].immed;
		break;

	case UJ_TYPE_INSTRUCTION:
		// UJ Type
		break;

	case SB_TYPE_INSTRUCTION:
		// SB Type
		rs1 = branch[pProgramCounter->entryIndex].rs1;
		rs2 = branch[pProgramCounter->entryIndex].rs2;

		immed = branch[pProgramCounter->entryIndex].immed;
		break;

	default:
		// Unspported Type
		break;
	}
	pProgramCounter++;
};

	GReg_func(rs1, rs2, immed);

}


ap_int<7> GetOpcode(Instruction *pProgramCounter)
{
	ap_int<7> ret;

	switch (pProgramCounter->format_Sel)
	{
	case R_TYPE_INSTRUCTION:
		ret = arithematic[pProgramCounter->entryIndex].opcode;
		break;

	case I_TYPE_INSTRUCTION:
		ret = load[pProgramCounter->entryIndex].opcode;
		break;

	case S_TYPE_INSTRUCTION:
		ret = store[pProgramCounter->entryIndex].opcode;
		break;

	case UJ_TYPE_INSTRUCTION:
		break;

	case SB_TYPE_INSTRUCTION:
		ret = branch[pProgramCounter->entryIndex].opcode;
		break;

	default:
		// error
		break;
	} // switch

	return ret;
}
