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
static const char *ng0 = "/home/ise/Secuencial_Nexys3/Latch-flipflop/Latch_jk_enable/JK_Enable.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_0009075990_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    char *t14;

LAB0:    xsi_set_current_line(18, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1968U);
    t6 = *((char **)t1);
    t1 = (t6 + 0);
    *((unsigned char *)t1) = t3;

LAB3:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3344);
    t6 = (t1 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t14 = *((char **)t12);
    *((unsigned char *)t14) = t3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 3408);
    t6 = (t1 + 56U);
    t9 = *((char **)t6);
    t12 = (t9 + 56U);
    t14 = *((char **)t12);
    *((unsigned char *)t14) = t4;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3264);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(19, ng0);
    t1 = (t0 + 1032U);
    t6 = *((char **)t1);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    if (t8 == 1)
        goto LAB8;

LAB9:    t5 = (unsigned char)0;

LAB10:    if (t5 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB13;

LAB14:    t3 = (unsigned char)0;

LAB15:    if (t3 != 0)
        goto LAB11;

LAB12:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB18;

LAB19:    t3 = (unsigned char)0;

LAB20:    if (t3 != 0)
        goto LAB16;

LAB17:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 1968U);
    t12 = *((char **)t1);
    t13 = *((unsigned char *)t12);
    t1 = (t0 + 1968U);
    t14 = *((char **)t1);
    t1 = (t14 + 0);
    *((unsigned char *)t1) = t13;
    goto LAB6;

LAB8:    t1 = (t0 + 1192U);
    t9 = *((char **)t1);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)2);
    t5 = t11;
    goto LAB10;

LAB11:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 1968U);
    t9 = *((char **)t1);
    t10 = *((unsigned char *)t9);
    t11 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t10);
    t1 = (t0 + 1968U);
    t12 = *((char **)t1);
    t1 = (t12 + 0);
    *((unsigned char *)t1) = t11;
    goto LAB6;

LAB13:    t1 = (t0 + 1192U);
    t6 = *((char **)t1);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t3 = t8;
    goto LAB15;

LAB16:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1968U);
    t9 = *((char **)t1);
    t1 = (t9 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    goto LAB6;

LAB18:    t1 = (t0 + 1192U);
    t6 = *((char **)t1);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t3 = t8;
    goto LAB20;

}


extern void work_a_0009075990_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0009075990_3212880686_p_0};
	xsi_register_didat("work_a_0009075990_3212880686", "isim/tes_isim_beh.exe.sim/work/a_0009075990_3212880686.didat");
	xsi_register_executes(pe);
}
