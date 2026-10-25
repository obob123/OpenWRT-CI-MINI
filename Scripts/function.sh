#!/bin/bash


  #删除wifi依赖
  if [[ "$WRT_CONFIG" == *"NOWIFI"* ]]; then
    remove_wifi $target
  fi

  set_nss_driver $config_file
  #增加ebpf
  cat_ebpf_config $config_file
  enable_skb_recycler $config_file
  set_kernel_size
  #增加内核选项
  cat_kernel_config "target/linux/qualcommax/${target}/config-default"
}






