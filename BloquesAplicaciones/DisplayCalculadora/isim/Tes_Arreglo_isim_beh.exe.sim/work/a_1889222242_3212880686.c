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
static const char *ng0 = "/home/ise/Secuencial_Nexys3/DisplayCalculadora/arreglo_reg.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1889222242_3212880686_p_0(char *t0)
{
    char t13[16];
    char t14[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;

LAB0:    xsi_set_current_line(18, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1152U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3392);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(19, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t5 = t1;
    memset(t5, (unsigned char)2, 16U);
    t6 = (t0 + 3488);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(21, ng0);
    t2 = (t0 + 5470);
    t7 = (t0 + 1352U);
    t8 = *((char **)t7);
    t9 = ((IEEE_P_2592010699) + 4000);
    t10 = (t14 + 0U);
    t15 = (t10 + 0U);
    *((int *)t15) = 0;
    t15 = (t10 + 4U);
    *((int *)t15) = 11;
    t15 = (t10 + 8U);
    *((int *)t15) = 1;
    t16 = (11 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t15 = (t10 + 12U);
    *((unsigned int *)t15) = t17;
    t15 = (t0 + 5392U);
    t7 = xsi_base_array_concat(t7, t13, t9, (char)97, t2, t14, (char)97, t8, t15, (char)101);
    t17 = (12U + 4U);
    t18 = (16U != t17);
    if (t18 == 1)
        goto LAB10;

LAB11:    t19 = (t0 + 3488);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t7, 16U);
    xsi_driver_first_trans_fast(t19);
    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t17 = (15 - 11);
    t24 = (t17 * 1U);
    t25 = (0 + t24);
    t1 = (t2 + t25);
    t5 = (t0 + 3488);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 12U);
    xsi_driver_first_trans_delta(t5, 0U, 12U, 0LL);
    goto LAB3;

LAB7:    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_size_not_matching(16U, t17, 0);
    goto LAB11;

}

static void work_a_1889222242_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(25, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3552);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3408);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1889222242_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1889222242_3212880686_p_0,(void *)work_a_1889222242_3212880686_p_1};
	xsi_register_didat("work_a_1889222242_3212880686", "isim/Tes_Arreglo_isim_beh.exe.sim/work/a_1889222242_3212880686.didat");
	xsi_register_executes(pe);
}
