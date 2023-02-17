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
static const char *ng0 = "/home/ise/OSwin7/RS232_RX/mod_rx.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_3307759752501503797_1035706684(char *, char *, char *, int );


static void work_a_1390334383_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;

LAB0:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4672);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 4768);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(27, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t5 = (t0 + 4832);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(28, ng0);
    t1 = xsi_get_transient_memory(3U);
    memset(t1, 0, 3U);
    t2 = t1;
    memset(t2, (unsigned char)2, 3U);
    t5 = (t0 + 4896);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 3U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 2312U);
    t6 = *((char **)t2);
    t12 = *((unsigned char *)t6);
    t2 = (t0 + 4768);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    *((unsigned char *)t13) = t12;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 4832);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(32, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 4896);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 3U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t10 = *((unsigned char *)t5);
    t11 = (t10 == (unsigned char)3);
    t3 = t11;
    goto LAB9;

}

static void work_a_1390334383_3212880686_p_1(char *t0)
{
    char t12[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6};

LAB0:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4960);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5024);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 4U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 5088);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 3U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 5152);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 5216);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 4688);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 5280);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)2);
    if (t9 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB2;

LAB4:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB2;

LAB5:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB18;

LAB20:
LAB19:    goto LAB2;

LAB6:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB31;

LAB33:
LAB32:    goto LAB2;

LAB7:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 4960);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(49, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t4 = (t0 + 5024);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5280);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB10:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t1 = (t0 + 7528U);
    t10 = ieee_p_1242562249_sub_3307759752501503797_1035706684(IEEE_P_1242562249, t4, t1, 7);
    if (t10 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 7528U);
    t4 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t12, t2, t1, 1);
    t5 = (t12 + 12U);
    t13 = *((unsigned int *)t5);
    t14 = (1U * t13);
    t3 = (4U != t14);
    if (t3 == 1)
        goto LAB16;

LAB17:    t6 = (t0 + 5024);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t15 = *((char **)t11);
    memcpy(t15, t4, 4U);
    xsi_driver_first_trans_fast(t6);

LAB14:    goto LAB11;

LAB13:    xsi_set_current_line(55, ng0);
    t5 = (t0 + 4960);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(56, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t4 = (t0 + 5024);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(57, ng0);
    t1 = xsi_get_transient_memory(3U);
    memset(t1, 0, 3U);
    t2 = t1;
    memset(t2, (unsigned char)2, 3U);
    t4 = (t0 + 5088);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 3U);
    xsi_driver_first_trans_fast(t4);
    goto LAB14;

LAB16:    xsi_size_not_matching(4U, t14, 0);
    goto LAB17;

LAB18:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t1 = (t0 + 7528U);
    t10 = ieee_p_1242562249_sub_3307759752501503797_1035706684(IEEE_P_1242562249, t4, t1, 15);
    if (t10 != 0)
        goto LAB21;

LAB23:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 7528U);
    t4 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t12, t2, t1, 1);
    t5 = (t12 + 12U);
    t13 = *((unsigned int *)t5);
    t14 = (1U * t13);
    t3 = (4U != t14);
    if (t3 == 1)
        goto LAB29;

LAB30:    t6 = (t0 + 5024);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t15 = *((char **)t11);
    memcpy(t15, t4, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5280);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB22:    goto LAB19;

LAB21:    xsi_set_current_line(65, ng0);
    t5 = (t0 + 5216);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(66, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t4 = (t0 + 5024);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 7544U);
    t3 = ieee_p_1242562249_sub_3307759752501503797_1035706684(IEEE_P_1242562249, t2, t1, 7);
    if (t3 != 0)
        goto LAB24;

LAB26:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 7544U);
    t4 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t12, t2, t1, 1);
    t5 = (t12 + 12U);
    t13 = *((unsigned int *)t5);
    t14 = (1U * t13);
    t3 = (3U != t14);
    if (t3 == 1)
        goto LAB27;

LAB28:    t6 = (t0 + 5088);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t15 = *((char **)t11);
    memcpy(t15, t4, 3U);
    xsi_driver_first_trans_fast(t6);

LAB25:    goto LAB22;

LAB24:    xsi_set_current_line(68, ng0);
    t4 = (t0 + 4960);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    goto LAB25;

LAB27:    xsi_size_not_matching(3U, t14, 0);
    goto LAB28;

LAB29:    xsi_size_not_matching(4U, t14, 0);
    goto LAB30;

LAB31:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t1 = (t0 + 7528U);
    t10 = ieee_p_1242562249_sub_3307759752501503797_1035706684(IEEE_P_1242562249, t4, t1, 15);
    if (t10 != 0)
        goto LAB34;

LAB36:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 7528U);
    t4 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t12, t2, t1, 1);
    t5 = (t12 + 12U);
    t13 = *((unsigned int *)t5);
    t14 = (1U * t13);
    t3 = (4U != t14);
    if (t3 == 1)
        goto LAB37;

LAB38:    t6 = (t0 + 5024);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t15 = *((char **)t11);
    memcpy(t15, t4, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5280);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB35:    goto LAB32;

LAB34:    xsi_set_current_line(80, ng0);
    t5 = (t0 + 4960);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)0;
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 5152);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB35;

LAB37:    xsi_size_not_matching(4U, t14, 0);
    goto LAB38;

}


extern void work_a_1390334383_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1390334383_3212880686_p_0,(void *)work_a_1390334383_3212880686_p_1};
	xsi_register_didat("work_a_1390334383_3212880686", "isim/tes_Rs232RX_isim_beh.exe.sim/work/a_1390334383_3212880686.didat");
	xsi_register_executes(pe);
}
