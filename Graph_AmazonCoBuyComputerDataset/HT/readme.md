## Graph Convolutional Network (GCN) - Hydrogen Torch

### チューニングアプローチ

Round 1 : 以下のハイパーパラメータ設定をグリッドサーチ（96回の実験）
- epochs : 5 or 10
- hidden_dims : 128 or 256
- hidden_layers : 2 or 4
- num_hops : 2 or 3 or 4
- neighbor_sampling_quantile : 0.25 or 0.5
- learning_rate : 0.002 or 0.01

Round 2 : Round 1の結果を元に、以下のハイパーパラメータ設定をグリッドサーチ（12回の実験）
- epochs = 10 (固定)
- hidden_dims = 256 (固定)
- hidden_layers = 2 (固定)
- num_hops : 4 or 5
- neighbor_sampling_quantile : 0.5 or 0.7 or 1
- learning_rate : 0.002 or 0.01

### 結果
Round 1 (96回の実験のうち、上位10位を表示)
| Name                                                                                                                             | Epochs | Hidden Dims | Learning Rate | Neighbor Sampling Quantile | Hidden Layers | Num Hops | Val Accuracy | Test Accuracy | Runtime |
|----------------------------------------------------------------------------------------------------------------------------------|--------|-------------|----------------|----------------------------|----------------|----------|--------------|---------------|---------|
| Graph-Amazon_grid_epochs_10_hidden_dims_256_learning_rate_0.002_neighbor_sampling_quantile_0.5_num_hidden_layers_2_num_hops_4     | 10     | 256         | 0.002          | 0.5                        | 2              | 4        | 0.8671       | 0.8594        | 0:00:35 |
| Graph-Amazon_grid_epochs_10_hidden_dims_128_learning_rate_0.002_neighbor_sampling_quantile_0.5_num_hidden_layers_4_num_hops_4     | 10     | 128         | 0.002          | 0.5                        | 4              | 4        | 0.8603       | 0.8587        | 0:00:36 |
| Graph-Amazon_grid_epochs_10_hidden_dims_128_learning_rate_0.002_neighbor_sampling_quantile_0.5_num_hidden_layers_2_num_hops_4     | 10     | 128         | 0.002          | 0.5                        | 2              | 4        | 0.863        | 0.8572        | 0:00:31 |
| Graph-Amazon_grid_epochs_10_hidden_dims_256_learning_rate_0.002_neighbor_sampling_quantile_0.5_num_hidden_layers_4_num_hops_3     | 10     | 256         | 0.002          | 0.5                        | 4              | 3        | 0.8612       | 0.8543        | 0:00:31 |
| Graph-Amazon_grid_epochs_10_hidden_dims_256_learning_rate_0.002_neighbor_sampling_quantile_0.5_num_hidden_layers_4_num_hops_4     | 10     | 256         | 0.002          | 0.5                        | 4              | 4        | 0.8671       | 0.8528        | 0:00:41 |
| Graph-Amazon_grid_epochs_10_hidden_dims_128_learning_rate_0.01_neighbor_sampling_quantile_0.5_num_hidden_layers_2_num_hops_4      | 10     | 128         | 0.01           | 0.5                        | 2              | 4        | 0.8621       | 0.8521        | 0:00:31 |
| Graph-Amazon_grid_epochs_10_hidden_dims_128_learning_rate_0.002_neighbor_sampling_quantile_0.5_num_hidden_layers_4_num_hops_3     | 10     | 128         | 0.002          | 0.5                        | 4              | 3        | 0.8571       | 0.8415        | 0:00:28 |
| Graph-Amazon_grid_epochs_5_hidden_dims_256_learning_rate_0.002_neighbor_sampling_quantile_0.5_num_hidden_layers_2_num_hops_4      | 5      | 256         | 0.002          | 0.5                        | 2              | 4        | 0.8327       | 0.829         | 0:00:18 |
| Graph-Amazon_grid_epochs_10_hidden_dims_256_learning_rate_0.002_neighbor_sampling_quantile_0.5_num_hidden_layers_2_num_hops_3     | 10     | 256         | 0.002          | 0.5                        | 2              | 3        | 0.8358       | 0.8257        | 0:00:27 |
| Graph-Amazon_grid_epochs_5_hidden_dims_256_learning_rate_0.002_neighbor_sampling_quantile_0.5_num_hidden_layers_4_num_hops_4      | 5      | 256         | 0.002          | 0.5                        | 4              | 4        | 0.8222       | 0.8195        | 0:00:21 |

Round 2は、Round 1の結果を元に、精度向上しそうな方向にハイパーパラメータの検証を実施したが、精度向上は見られず  

結果詳細：[HT_result.xlsx](./HT_result.xlsx)


