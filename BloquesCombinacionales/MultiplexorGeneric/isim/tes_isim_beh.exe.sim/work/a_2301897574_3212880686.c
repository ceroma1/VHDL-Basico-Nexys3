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
static const char *ng0 = "/home/ise/Codigos_VHDL/BloquesCombinacionales/MultiplexorGeneric/muxgeneric.vhd";



static void work_a_2301897574_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(19, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 5694);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB8:    t5 = (t0 + 5696);
    t7 = xsi_mem_cmp(t5, t2, 2U);
    if (t7 == 1)
        goto LAB4;

LAB9:    t8 = (t0 + 5698);
    t10 = xsi_mem_cmp(t8, t2, 2U);
    if (t10 == 1)
        goto LAB5;

LAB10:    t11 = (t0 + 5700);
    t13 = xsi_mem_cmp(t11, t2, 2U);
    if (t13 == 1)
        goto LAB6;

LAB11:
LAB7:    xsi_set_current_line(24, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)4, 4U);
    t3 = (t0 + 3504);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 3424);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(20, ng0);
    t14 = (t0 + 1032U);
    t15 = *((char **)t14);
    t14 = (t0 + 3504);
    t16 = (t14 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t15, 4U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB2;

LAB4:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 3504);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 3504);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 3504);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB12:;
}


extern void work_a_2301897574_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2301897574_3212880686_p_0};
	xsi_register_didat("work_a_2301897574_3212880686", "isim/tes_isim_beh.exe.sim/work/a_2301897574_3212880686.didat");
	xsi_register_executes(pe);
}
