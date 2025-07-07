#cifar10

python ./attack/blended.py --yaml_path "./config/attack/prototype/cifar10.yaml" --save_folder_name "blended_cifar10_hello_kitty_0.1pratio"  --dataset cifar10 --pratio 0.1 --patch_mask_path ./resource/blended/hello_kitty.jpeg

python ./attack/ssba.py --yaml_path "./config/attack/prototype/cifar10.yaml" --save_folder_name "ssba_cifar10_0.1pratio"  --dataset cifar10 --pratio 0.1

python ./attack/inputaware.py --yaml_path "./config/attack/prototype/cifar10.yaml" --save_folder_name "iab_cifar10_0.1pratio"  --dataset cifar10 --pratio 0.1

python ./attack/wanet.py --yaml_path "./config/attack/prototype/cifar10.yaml" --save_folder_name "wanet_cifar10_0.1pratio"  --dataset cifar10 --pratio 0.1


python ./attack/lc.py --yaml_path "./config/attack/prototype/cifar10.yaml" --save_folder_name "lc_cifar10_0.04pratio" --dataset cifar10 --pratio 0.04

python ./attack/badnet.py --yaml_path "./config/attack/prototype/cifar10.yaml" --save_folder_name "badnet_cifar10_colorful_suqare_0.1pratio"  --dataset cifar10 --pratio 0.1 --patch_mask_path ./resource/badnet/colorful_suqare.png
python ./attack/badnet.py --yaml_path "./config/attack/prototype/cifar10.yaml" --save_folder_name "badnet_cifar10_white_square_0.1pratio"  --dataset cifar10 --pratio 0.1 --patch_mask_path ./resource/badnet/white_square.png
python ./attack/sig.py --yaml_path "./config/attack/prototype/cifar10.yaml" --save_folder_name "sig_cifar10_0.04pratio"  --dataset cifar10 --pratio 0.1






#tiny
python ./attack/badnet.py --yaml_path "./config/attack/prototype/tiny.yaml" --save_folder_name "badnet_tiny_colorful_suqare_0.1pratio"  --dataset tiny --pratio 0.1 --patch_mask_path ./resource/badnet/colorful_suqare.png
python ./attack/badnet.py --yaml_path "./config/attack/prototype/tiny.yaml" --save_folder_name "badnet_tiny_white_square_0.1pratio"  --dataset tiny --pratio 0.1 --patch_mask_path ./resource/badnet/white_square.png

python ./attack/blended.py --yaml_path "./config/attack/prototype/tiny.yaml" --save_folder_name "blended_tiny_hello_kitty_0.1pratio"  --dataset tiny --pratio 0.1 --patch_mask_path ./resource/blended/hello_kitty.jpeg

python ./attack/ssba.py --yaml_path "./config/attack/prototype/tiny.yaml" --save_folder_name "ssba_tiny_0.1pratio"  --dataset tiny --pratio 0.1

python ./attack/inputaware.py --yaml_path "./config/attack/prototype/tiny.yaml" --save_folder_name "iab_tiny_0.1pratio"  --dataset tiny --pratio 0.1

python ./attack/wanet.py --yaml_path "./config/attack/prototype/tiny.yaml" --save_folder_name "wanet_tiny_0.1pratio"  --dataset tiny --pratio 0.1

python ./attack/sig.py --yaml_path "./config/attack/prototype/tiny.yaml" --save_folder_name "sig_tiny_0.004pratio"  --dataset tiny --pratio 0.004

python ./attack/lc.py --yaml_path "./config/attack/prototype/tiny.yaml" --save_folder_name "lc_tiny_0.004pratio"  --dataset tiny --pratio 0.004

