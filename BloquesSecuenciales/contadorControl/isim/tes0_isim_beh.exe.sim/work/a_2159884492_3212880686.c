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
static const char *ng0 = "/home/ise/Secuencial_Nexys3/BloquesSecuenciales/contadorControl/ContadorControl.vhd";
extern char *IEEE_P_3499444699;

char *ieee_p_3499444699_sub_17544701978858283880_3536714472(char *, char *, int , int );


static void work_a_2159884492_3212880686_p_0(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    int t18;
    int t19;

LAB0:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB9;

LAB10:    t3 = (unsigned char)0;

LAB11:    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 3344);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1808U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(26, ng0);
    t1 = (t0 + 1928U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(27, ng0);
    t1 = (t0 + 2048U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(28, ng0);
    t1 = (t0 + 1928U);
    t2 = *((char **)t1);
    t7 = *((int *)t2);
    t1 = ieee_p_3499444699_sub_17544701978858283880_3536714472(IEEE_P_3499444699, t6, t7, 4);
    t5 = (t6 + 12U);
    t8 = *((unsigned int *)t5);
    t8 = (t8 * 1U);
    t3 = (4U != t8);
    if (t3 == 1)
        goto LAB5;

LAB6:    t9 = (t0 + 3424);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 4U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB3;

LAB5:    xsi_size_not_matching(4U, t8, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1352U);
    t9 = *((char **)t2);
    t16 = *((unsigned char *)t9);
    t17 = (t16 == (unsigned char)3);
    if (t17 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 2048U);
    t2 = *((char **)t1);
    t7 = *((int *)t2);
    t3 = (t7 == 1);
    if (t3 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1808U);
    t2 = *((char **)t1);
    t7 = *((int *)t2);
    t18 = (t7 * 2);
    t19 = (t18 + 1);
    t1 = (t0 + 1928U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t19;
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1928U);
    t2 = *((char **)t1);
    t7 = *((int *)t2);
    t1 = ieee_p_3499444699_sub_17544701978858283880_3536714472(IEEE_P_3499444699, t6, t7, 4);
    t5 = (t6 + 12U);
    t8 = *((unsigned int *)t5);
    t8 = (t8 * 1U);
    t3 = (4U != t8);
    if (t3 == 1)
        goto LAB22;

LAB23:    t9 = (t0 + 3424);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 4U);
    xsi_driver_first_trans_fast_port(t9);

LAB18:
LAB13:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1808U);
    t2 = *((char **)t1);
    t7 = *((int *)t2);
    t18 = (t7 + 1);
    t1 = (t0 + 1808U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t18;
    goto LAB3;

LAB9:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t14 = *((unsigned char *)t5);
    t15 = (t14 == (unsigned char)3);
    t3 = t15;
    goto LAB11;

LAB12:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1808U);
    t10 = *((char **)t2);
    t7 = *((int *)t10);
    t18 = (t7 * 2);
    t2 = (t0 + 1928U);
    t11 = *((char **)t2);
    t2 = (t11 + 0);
    *((int *)t2) = t18;
    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1928U);
    t2 = *((char **)t1);
    t7 = *((int *)t2);
    t1 = ieee_p_3499444699_sub_17544701978858283880_3536714472(IEEE_P_3499444699, t6, t7, 4);
    t5 = (t6 + 12U);
    t8 = *((unsigned int *)t5);
    t8 = (t8 * 1U);
    t3 = (4U != t8);
    if (t3 == 1)
        goto LAB15;

LAB16:    t9 = (t0 + 3424);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 4U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 2048U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 1;
    goto LAB13;

LAB15:    xsi_size_not_matching(4U, t8, 0);
    goto LAB16;

LAB17:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1808U);
    t5 = *((char **)t1);
    t18 = *((int *)t5);
    t19 = (t18 - 1);
    t1 = (t0 + 1808U);
    t9 = *((char **)t1);
    t1 = (t9 + 0);
    *((int *)t1) = t19;
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1808U);
    t2 = *((char **)t1);
    t7 = *((int *)t2);
    t18 = (t7 * 2);
    t19 = (t18 + 1);
    t1 = (t0 + 1928U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t19;
    xsi_set_current_line(38, ng0);
    t1 = (t0 + 1928U);
    t2 = *((char **)t1);
    t7 = *((int *)t2);
    t1 = ieee_p_3499444699_sub_17544701978858283880_3536714472(IEEE_P_3499444699, t6, t7, 4);
    t5 = (t6 + 12U);
    t8 = *((unsigned int *)t5);
    t8 = (t8 * 1U);
    t3 = (4U != t8);
    if (t3 == 1)
        goto LAB20;

LAB21:    t9 = (t0 + 3424);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 4U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 2048U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    goto LAB18;

LAB20:    xsi_size_not_matching(4U, t8, 0);
    goto LAB21;

LAB22:    xsi_size_not_matching(4U, t8, 0);
    goto LAB23;

}


extern void work_a_2159884492_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2159884492_3212880686_p_0};
	xsi_register_didat("work_a_2159884492_3212880686", "isim/tes0_isim_beh.exe.sim/work/a_2159884492_3212880686.didat");
	xsi_register_executes(pe);
}
