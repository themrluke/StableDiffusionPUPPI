//Numpy array shape [4]
//Min -0.001528622233
//Max 0.003719011787
//Number of zeros 0

#ifndef B52_H_
#define B52_H_

#ifndef __SYNTHESIS__
emb5_bias_t b52[4];
#else
emb5_bias_t b52[4] = {0.001406, -0.001269, -0.001529, 0.003719};
#endif

#endif
