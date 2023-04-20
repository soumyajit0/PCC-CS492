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
static const char *ng0 = "/home/ise/PCC-CS492/DEMUX/demux_rtl.vhd";



static void work_a_3161026710_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    int t9;
    int t10;
    char *t11;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    char *t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 4452);
    t3 = (t0 + 2904);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4460);
    t8 = xsi_mem_cmp(t1, t2, 3U);
    if (t8 == 1)
        goto LAB3;

LAB11:    t4 = (t0 + 4463);
    t9 = xsi_mem_cmp(t4, t2, 3U);
    if (t9 == 1)
        goto LAB4;

LAB12:    t6 = (t0 + 4466);
    t10 = xsi_mem_cmp(t6, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB13:    t11 = (t0 + 4469);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB14:    t14 = (t0 + 4472);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB15:    t17 = (t0 + 4475);
    t19 = xsi_mem_cmp(t17, t2, 3U);
    if (t19 == 1)
        goto LAB8;

LAB16:    t20 = (t0 + 4478);
    t22 = xsi_mem_cmp(t20, t2, 3U);
    if (t22 == 1)
        goto LAB9;

LAB17:
LAB10:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t25 = *((unsigned char *)t2);
    t1 = (t0 + 2904);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = t25;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);

LAB2:    t1 = (t0 + 2824);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(47, ng0);
    t23 = (t0 + 1032U);
    t24 = *((char **)t23);
    t25 = *((unsigned char *)t24);
    t23 = (t0 + 2904);
    t26 = (t23 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = t25;
    xsi_driver_first_trans_delta(t23, 7U, 1, 0LL);
    goto LAB2;

LAB4:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t25 = *((unsigned char *)t2);
    t1 = (t0 + 2904);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = t25;
    xsi_driver_first_trans_delta(t1, 6U, 1, 0LL);
    goto LAB2;

LAB5:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t25 = *((unsigned char *)t2);
    t1 = (t0 + 2904);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = t25;
    xsi_driver_first_trans_delta(t1, 5U, 1, 0LL);
    goto LAB2;

LAB6:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t25 = *((unsigned char *)t2);
    t1 = (t0 + 2904);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = t25;
    xsi_driver_first_trans_delta(t1, 4U, 1, 0LL);
    goto LAB2;

LAB7:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t25 = *((unsigned char *)t2);
    t1 = (t0 + 2904);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = t25;
    xsi_driver_first_trans_delta(t1, 3U, 1, 0LL);
    goto LAB2;

LAB8:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t25 = *((unsigned char *)t2);
    t1 = (t0 + 2904);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = t25;
    xsi_driver_first_trans_delta(t1, 2U, 1, 0LL);
    goto LAB2;

LAB9:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t25 = *((unsigned char *)t2);
    t1 = (t0 + 2904);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = t25;
    xsi_driver_first_trans_delta(t1, 1U, 1, 0LL);
    goto LAB2;

LAB18:;
}


extern void work_a_3161026710_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3161026710_3212880686_p_0};
	xsi_register_didat("work_a_3161026710_3212880686", "isim/demus_rtl_isim_beh.exe.sim/work/a_3161026710_3212880686.didat");
	xsi_register_executes(pe);
}
