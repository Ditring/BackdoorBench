#cifar10

python ./attack/blended.py --yaml_path "./config/attack/prototype/cifar10.yaml" --save_folder_name "blended_cifar10_hello_kitty_0.1pratio"  --dataset cifar10 --pratio 0.1 --patch_mask_path ./resource/blended/hello_kitty.jpeg --pic_save_root blended_hello_kitty_0.1pratio

python ./attack/ssba.py --yaml_path "./config/attack/prototype/cifar10.yaml" --save_folder_name "ssba_cifar10_0.1pratio"  --dataset cifar10 --pratio 0.1 --pic_save_root ssba_0.1pratio

python ./attack/inputaware.py --yaml_path "./config/attack/prototype/cifar10.yaml" --save_folder_name "iab_cifar10_0.1pratio"  --dataset cifar10 --pratio 0.1 --pic_save_root iab_0.1pratio

python ./attack/wanet.py --yaml_path "./config/attack/prototype/cifar10.yaml" --save_folder_name "wanet_cifar10_0.1pratio"  --dataset cifar10 --pratio 0.1 --pic_save_root wanet_0.1pratio


python ./attack/lc.py --yaml_path "./config/attack/prototype/cifar10.yaml" --save_folder_name "lc_cifar10_0.04pratio" --dataset cifar10 --pratio 0.04 --pic_save_root lc_0.04pratio

python ./attack/badnet.py --yaml_path "./config/attack/prototype/cifar10.yaml" --save_folder_name "badnet_cifar10_colorful_suqare_0.1pratio"  --dataset cifar10 --pratio 0.1 --patch_mask_path ./resource/badnet/colorful_suqare.png --pic_save_root badnet_colorful_suqare_0.1pratio
python ./attack/badnet.py --yaml_path "./config/attack/prototype/cifar10.yaml" --save_folder_name "badnet_cifar10_white_square_0.1pratio"  --dataset cifar10 --pratio 0.1 --patch_mask_path ./resource/badnet/white_square.png --pic_save_root badnet_white_square_0.1pratio
python ./attack/sig.py --yaml_path "./config/attack/prototype/cifar10.yaml" --save_folder_name "sig_cifar10_0.04pratio"  --dataset cifar10 --pratio 0.04 --pic_save_root sig_0.04pratio






#tiny
python ./attack/badnet.py --yaml_path "./config/attack/prototype/tiny.yaml" --save_folder_name "badnet_tiny_colorful_suqare_0.1pratio"  --dataset tiny --pratio 0.1 --patch_mask_path ./resource/badnet/colorful_suqare.png --pic_save_root badnet_colorful_suqare_0.1pratio
python ./attack/badnet.py --yaml_path "./config/attack/prototype/tiny.yaml" --save_folder_name "badnet_tiny_white_square_0.1pratio"  --dataset tiny --pratio 0.1 --patch_mask_path ./resource/badnet/white_square.png --pic_save_root badnet_white_square_0.1pratio

python ./attack/blended.py --yaml_path "./config/attack/prototype/tiny.yaml" --save_folder_name "blended_tiny_hello_kitty_0.1pratio"  --dataset tiny --pratio 0.1 --pic_save_root blended_hello_kitty_0.1pratio

python ./attack/ssba.py --yaml_path "./config/attack/prototype/tiny.yaml" --save_folder_name "ssba_tiny_0.1pratio"  --dataset tiny --pratio 0.1 --pic_save_root ssba_0.1pratio

python ./attack/inputaware.py --yaml_path "./config/attack/prototype/tiny.yaml" --save_folder_name "iab_tiny_0.1pratio"  --dataset tiny --pratio 0.1 --pic_save_root iab_0.1pratio

python ./attack/wanet.py --yaml_path "./config/attack/prototype/tiny.yaml" --save_folder_name "wanet_tiny_0.1pratio"  --dataset tiny --pratio 0.1 --pic_save_root wanet_0.1pratio

python ./attack/sig.py --yaml_path "./config/attack/prototype/tiny.yaml" --save_folder_name "sig_tiny_0.004pratio"  --dataset tiny --pratio 0.004 --pic_save_root sig_0.004pratio

python ./attack/lc.py --yaml_path "./config/attack/prototype/tiny.yaml" --save_folder_name "lc_tiny_0.004pratio"  --dataset tiny --pratio 0.004 --pic_save_root lc_0.004pratio

