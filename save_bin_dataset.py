import os
from pathlib import Path

def ensure_directory_exists(path):
    """确保路径存在，如果不存在则创建。"""
    os.makedirs(path, exist_ok=True)

def save_dataset_to_binary(data_folder, list_files, attack_type,dataset_name):
    """
    将数据集图片根据列表文件保存为二进制流文件。

    参数:
    data_folder: 包含图片文件和列表文件的文件夹路径。
    list_files: 列表文件名的列表，每个列表文件包含一部分数据集的图片名。
    attack_type: 攻击类型，用于创建特定的文件夹。
    """
    data_folder = Path(data_folder)
    folder_name = data_folder.name
    base_path = f"../bin_datasets/{attack_type}/{dataset_name}/"

    for list_file_name in list_files:
        output_name, _ = list_file_name.split('.')
        list_file_path = data_folder / list_file_name
        # 根据文件名生成对应的二进制文件和索引文件路径
        output_file = f"{base_path}{folder_name}_{output_name}.bin"
        index_file = f"{base_path}{folder_name}_{output_name}_index.txt"

        # 确保输出文件所在目录存在
        ensure_directory_exists(os.path.dirname(output_file))

        with open(output_file, 'wb') as bin_file, open(index_file, 'w') as idx_file:
            offset = 0  # 初始化文件偏移量

            # 读取列表文件中的所有图片名称和标签
            with open(list_file_path, 'r') as file_list:
                lines = file_list.readlines()
            for line in lines:
                img_name, label = line.strip().split(':')
                img_path = data_folder / img_name

                # 确保文件存在
                if img_path.exists() and img_path.suffix == '.png':
                    # 读取图片文件的内容
                    with open(img_path, 'rb') as f:
                        img_data = f.read()

                    # 写入图片数据到二进制文件
                    bin_file.write(img_data)

                    # 记录当前图片的大小和偏移量
                    size = len(img_data)
                    idx_file.write(f'{img_name},{label},{offset},{size}\n')

                    # 更新偏移量
                    offset += size

# 调用函数，保存训练集和测试集的二进制文件
dataset_name = 'cifar10'
# dataset_name = 'gtsrb'

attack_type_list = [
    #cifar10
    "blended_hello_kitty_0.1pratio",
    "ssba_0.1pratio",
    "iab_0.1pratio",
    "wanet_0.1pratio",
    "lc_0.04pratio",
    "badnet_colorful_suqare_0.1pratio",
    "badnet_white_square_0.1pratio",
    "sig_0.04pratio",

    #tiny
    # "badnet_colorful_suqare_0.1pratio",
    # "badnet_white_square_0.1pratio",
    # "blended_hello_kitty_0.1pratio",
    # "ssba_0.1pratio",
    # "iab_0.1pratio",
    # "wanet_0.1pratio",
    # "sig_0.004pratio",
    # "lc_0.004pratio"
]
for attack_type in attack_type_list:
    save_dataset_to_binary(f'./pic/{attack_type}/{dataset_name}/trainSet', ['labels.txt','clean_list.txt','poisoned_list.txt'], attack_type,f'{dataset_name}')
    save_dataset_to_binary(f'./pic/{attack_type}/{dataset_name}/testSetPoisoned', ['labels.txt', 'poisoned_list.txt'], attack_type,f'{dataset_name}')
    save_dataset_to_binary(f'./pic/{attack_type}/{dataset_name}/testSetClear', ['labels.txt', 'poisoned_list.txt'], attack_type,f'{dataset_name}')

