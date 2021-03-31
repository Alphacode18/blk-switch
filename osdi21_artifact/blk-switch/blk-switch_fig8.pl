#!/usr/bin/perl

######################################
# Figure 8 setting
######################################
@tapp_qd = (1, 2, 4, 8, 16, 32);

######################################
# blk-switch setting
######################################
$nvme_dev = "/dev/nvme0n1";
$tapp_bs = "64k";

######################################
# script variables
######################################
$n_input = @tapp_qd;
$repeat = 1;

# Run
print("## Figure 8. blk-switch ##\n");

for($i=0; $i<$n_input; $i++)
{
        for($j=0; $j<$repeat; $j++)
        {
                system("./load_tapp.pl $nvme_dev $tapp_bs $tapp_qd[$i]");
        }
}

print("All done.\n");
