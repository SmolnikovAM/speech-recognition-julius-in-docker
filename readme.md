links

https://github.com/techiaith/seilwaith/blob/master/Dockerfile
https://hub.docker.com/r/fabito/julius/dockerfile
https://github.com/julius-speech/julius


base fromm 
https://sourceforge.net/projects/juliusmodels/files/ENVR-v5.4.Dnn.Bin.zip/download


```
feature_type MFCC_E_D_A_Z
feature_options -htkconf wav_config -cvn -cmnload ENVR-v5.3.norm -cmnstatic
feature_len 48
context_len 11
input_nodes 528
output_nodes 7461
hidden_nodes 1536
hidden_layers 5
W1 ENVR-v5.3.layer2_weight.npy
W2 ENVR-v5.3.layer3_weight.npy
W3 ENVR-v5.3.layer4_weight.npy
W4 ENVR-v5.3.layer5_weight.npy
W5 ENVR-v5.3.layer6_weight.npy
B1 ENVR-v5.3.layer2_bias.npy
B2 ENVR-v5.3.layer3_bias.npy
B3 ENVR-v5.3.layer4_bias.npy
B4 ENVR-v5.3.layer5_bias.npy
B5 ENVR-v5.3.layer6_bias.npy
output_W ENVR-v5.3.layerout_weight.npy
output_B ENVR-v5.3.layerout_bias.npy
state_prior_factor 1.0
state_prior ENVR-v5.3.prior
state_prior_log10nize false
```


```
docker image build -t recognition . 

docker container run -it -v ${PWD}/base/ENVR-v5.4.Dnn.Bin:"/ENVR-v5.4.Dnn.Bin" --rm recognition:latest
```