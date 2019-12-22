/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/Codigos_VHDL/BloquesCombinacionales/comparageneric/camparageneric.vhd";
extern char *IEEE_P_2592010699;



static void work_a_0287900638_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(18, ng0);
    t1 = (t0 + 3344);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(19, ng0);
    t1 = (t0 + 3408);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(20, ng0);
    t1 = (t0 + 3472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t6 = 1;
    if (4U == 4U)
        goto LAB5;

LAB6:    t6 = 0;

LAB7:    if (t6 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = ((IEEE_P_2592010699) + 4000);
    t6 = xsi_vhdl_greater(t1, t2, 4U, t3, 4U);
    if (t6 != 0)
        goto LAB11;

LAB12:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = ((IEEE_P_2592010699) + 4000);
    t6 = xsi_vhdl_lessthan(t1, t2, 4U, t3, 4U);
    if (t6 != 0)
        goto LAB13;

LAB14:
LAB3:    t1 = (t0 + 3264);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(22, ng0);
    t5 = (t0 + 3344);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

LAB5:    t7 = 0;

LAB8:    if (t7 < 4U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t1 = (t2 + t7);
    t4 = (t3 + t7);
    if (*((unsigned char *)t1) != *((unsigned char *)t4))
        goto LAB6;

LAB10:    t7 = (t7 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(24, ng0);
    t4 = (t0 + 3408);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB3;

LAB13:    xsi_set_current_line(26, ng0);
    t4 = (t0 + 3472);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB3;

}


extern void work_a_0287900638_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0287900638_3212880686_p_0};
	xsi_register_didat("work_a_0287900638_3212880686", "isim/tes_isim_beh.exe.sim/work/a_0287900638_3212880686.didat");
	xsi_register_executes(pe);
}
