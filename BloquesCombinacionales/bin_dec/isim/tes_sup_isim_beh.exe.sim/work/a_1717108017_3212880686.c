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
static const char *ng0 = "/home/ise/Codigos_VHDL/BloquesCombinacionales/bin_dec/bin_dec.vhd";
extern char *IEEE_P_3499444699;

char *ieee_p_3499444699_sub_17544701978858283880_3536714472(char *, char *, int , int );


static void work_a_1717108017_3212880686_p_0(char *t0)
{
    char t52[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    int t16;
    int t17;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned char t24;
    int t25;
    int t26;
    int t27;
    char *t28;
    char *t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    int t35;
    int t36;
    int t37;
    char *t38;
    char *t39;
    int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned char t44;
    int t45;
    int t46;
    int t47;
    int t48;
    int t49;
    char *t50;
    char *t51;

LAB0:    xsi_set_current_line(18, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (3 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 3024);
    t9 = (t1 + 56U);
    t10 = *((char **)t9);
    t18 = (t10 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(24, ng0);
    t1 = (t0 + 3088);
    t2 = (t1 + 56U);
    t9 = *((char **)t2);
    t10 = (t9 + 56U);
    t18 = *((char **)t10);
    *((unsigned char *)t18) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 2944);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(19, ng0);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t11 = (0 - 3);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t9 = (t10 + t14);
    t15 = *((unsigned char *)t9);
    t16 = ieee_std_logic_arith_conv_integer_ulogic(IEEE_P_3499444699, t15);
    t17 = (t16 * 1);
    t18 = (t0 + 1032U);
    t19 = *((char **)t18);
    t20 = (1 - 3);
    t21 = (t20 * -1);
    t22 = (1U * t21);
    t23 = (0 + t22);
    t18 = (t19 + t23);
    t24 = *((unsigned char *)t18);
    t25 = ieee_std_logic_arith_conv_integer_ulogic(IEEE_P_3499444699, t24);
    t26 = (t25 * 2);
    t27 = (t17 + t26);
    t28 = (t0 + 1032U);
    t29 = *((char **)t28);
    t30 = (2 - 3);
    t31 = (t30 * -1);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t28 = (t29 + t33);
    t34 = *((unsigned char *)t28);
    t35 = ieee_std_logic_arith_conv_integer_ulogic(IEEE_P_3499444699, t34);
    t36 = (t35 * 4);
    t37 = (t27 + t36);
    t38 = (t0 + 1032U);
    t39 = *((char **)t38);
    t40 = (3 - 3);
    t41 = (t40 * -1);
    t42 = (1U * t41);
    t43 = (0 + t42);
    t38 = (t39 + t43);
    t44 = *((unsigned char *)t38);
    t45 = ieee_std_logic_arith_conv_integer_ulogic(IEEE_P_3499444699, t44);
    t46 = (t45 * 8);
    t47 = (t37 - t46);
    t48 = (-(1));
    t49 = (t47 * t48);
    t50 = (t0 + 1648U);
    t51 = *((char **)t50);
    t50 = (t51 + 0);
    *((int *)t50) = t49;
    xsi_set_current_line(20, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = ieee_p_3499444699_sub_17544701978858283880_3536714472(IEEE_P_3499444699, t52, t3, 4);
    t9 = (t52 + 12U);
    t4 = *((unsigned int *)t9);
    t4 = (t4 * 1U);
    t7 = (4U != t4);
    if (t7 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 3024);
    t18 = (t10 + 56U);
    t19 = *((char **)t18);
    t28 = (t19 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t1, 4U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(21, ng0);
    t1 = (t0 + 3088);
    t2 = (t1 + 56U);
    t9 = *((char **)t2);
    t10 = (t9 + 56U);
    t18 = *((char **)t10);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_size_not_matching(4U, t4, 0);
    goto LAB6;

}


extern void work_a_1717108017_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1717108017_3212880686_p_0};
	xsi_register_didat("work_a_1717108017_3212880686", "isim/tes_sup_isim_beh.exe.sim/work/a_1717108017_3212880686.didat");
	xsi_register_executes(pe);
}
