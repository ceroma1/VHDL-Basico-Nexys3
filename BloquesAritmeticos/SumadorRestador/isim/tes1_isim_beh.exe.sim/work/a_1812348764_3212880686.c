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
static const char *ng0 = "/home/ise/Codigos_VHDL/BloquesAritmeticos/SumadorRestador/presenta.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1812348764_3212880686_p_0(char *t0)
{
    char t6[16];
    char t22[16];
    char t25[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    int t23;
    unsigned int t24;
    char *t26;
    int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(18, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t16 = (4 - 4);
    t9 = (t16 * -1);
    t17 = (1U * t9);
    t18 = (0 + t17);
    t1 = (t2 + t18);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 4672);
    t5 = (t0 + 1032U);
    t7 = *((char **)t5);
    t9 = (4 - 3);
    t17 = (t9 * 1U);
    t18 = (0 + t17);
    t5 = (t7 + t18);
    t11 = ((IEEE_P_2592010699) + 4000);
    t12 = (t22 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 1;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t16 = (1 - 0);
    t19 = (t16 * 1);
    t19 = (t19 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t19;
    t13 = (t25 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 3;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t23 = (0 - 3);
    t19 = (t23 * -1);
    t19 = (t19 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t19;
    t8 = xsi_base_array_concat(t8, t6, t11, (char)97, t1, t22, (char)97, t5, t25, (char)101);
    t19 = (2U + 4U);
    t3 = (6U != t19);
    if (t3 == 1)
        goto LAB12;

LAB13:    t14 = (t0 + 2904);
    t15 = (t14 + 56U);
    t26 = *((char **)t15);
    t28 = (t26 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t8, 6U);
    xsi_driver_first_trans_fast_port(t14);

LAB8:
LAB3:    t1 = (t0 + 2824);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(19, ng0);
    t1 = (t0 + 1032U);
    t5 = *((char **)t1);
    t7 = ((IEEE_P_2592010699) + 4000);
    t8 = (t0 + 4624U);
    t1 = xsi_base_array_concat(t1, t6, t7, (char)99, (unsigned char)2, (char)97, t5, t8, (char)101);
    t9 = (1U + 5U);
    t10 = (6U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 2904);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 6U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB3;

LAB5:    xsi_size_not_matching(6U, t9, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(22, ng0);
    t5 = (t0 + 4670);
    t8 = (t0 + 1032U);
    t11 = *((char **)t8);
    t19 = (4 - 3);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t8 = (t11 + t21);
    t13 = ((IEEE_P_2592010699) + 4000);
    t14 = (t22 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 0;
    t15 = (t14 + 4U);
    *((int *)t15) = 1;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t23 = (1 - 0);
    t24 = (t23 * 1);
    t24 = (t24 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t24;
    t15 = (t25 + 0U);
    t26 = (t15 + 0U);
    *((int *)t26) = 3;
    t26 = (t15 + 4U);
    *((int *)t26) = 0;
    t26 = (t15 + 8U);
    *((int *)t26) = -1;
    t27 = (0 - 3);
    t24 = (t27 * -1);
    t24 = (t24 + 1);
    t26 = (t15 + 12U);
    *((unsigned int *)t26) = t24;
    t12 = xsi_base_array_concat(t12, t6, t13, (char)97, t5, t22, (char)97, t8, t25, (char)101);
    t24 = (2U + 4U);
    t10 = (6U != t24);
    if (t10 == 1)
        goto LAB10;

LAB11:    t26 = (t0 + 2904);
    t28 = (t26 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t12, 6U);
    xsi_driver_first_trans_fast_port(t26);
    goto LAB8;

LAB10:    xsi_size_not_matching(6U, t24, 0);
    goto LAB11;

LAB12:    xsi_size_not_matching(6U, t19, 0);
    goto LAB13;

}


extern void work_a_1812348764_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1812348764_3212880686_p_0};
	xsi_register_didat("work_a_1812348764_3212880686", "isim/tes1_isim_beh.exe.sim/work/a_1812348764_3212880686.didat");
	xsi_register_executes(pe);
}
