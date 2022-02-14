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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *WORK_P_4269293715;
char *WORK_P_0211219801;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_p_0211219801_init();
    work_p_4269293715_init();
    work_a_1955241509_3212880686_init();
    work_a_1871462421_3212880686_init();
    work_a_3036955109_3212880686_init();
    work_a_3276679129_3212880686_init();
    work_a_1773432684_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_1599699025_2372691052_init();


    xsi_register_tops("work_a_1599699025_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    WORK_P_4269293715 = xsi_get_engine_memory("work_p_4269293715");
    WORK_P_0211219801 = xsi_get_engine_memory("work_p_0211219801");
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
