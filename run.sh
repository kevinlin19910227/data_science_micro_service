#pip install torch pytorch-pretrained-bert
python3 src/app.py --model_name bert_ssc --state_dict_path state_dict/bert_ssc_val_acc
#docker run -v ${PWD}/logs:/logs ms:1.0.1 python3 src/app.py --model_name bert_ssc --state_dict_path state_dict/bert_ssc_val_acc
#docker run -p 5000:5000 -v ${PWD}/logs:/logs ms:1.0.1 python3 src/app.py --model_name bert_ssc --state_dict_path state_dict/bert_ssc_val_acc