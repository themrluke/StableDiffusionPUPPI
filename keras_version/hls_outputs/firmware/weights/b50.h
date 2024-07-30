//Numpy array shape [4]
//Min -0.003525165142
//Max 0.003809550311
//Number of zeros 0

#ifndef B50_H_
#define B50_H_

#ifndef __SYNTHESIS__
emb4_bias_t b50[4];
#else
emb4_bias_t b50[4] = {0.003210, -0.003525, 0.003810, -0.001547};
#endif

#endif
