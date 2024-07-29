//Numpy array shape [4]
//Min -0.001533193165
//Max 0.003719072789
//Number of zeros 0

#ifndef B52_H_
#define B52_H_

#ifndef __SYNTHESIS__
emb5_bias_t b52[4];
#else
emb5_bias_t b52[4] = {0.001405, -0.001267, -0.001533, 0.003719};
#endif

#endif
