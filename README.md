# Binary-EEG-classification

    INTRODUCTION

This project focuses on detection of seizures in an Epileptic EEG signal using the STFT, wavelet and sparsity techniques. Detection sensitivity and falsepositive detection 
for each technique is compared.During the course of this project, Short-time Fourier Transform (STFT), Wavelet and Sparsity techniques will be applied to EEG signals to extract
features from the segments of data which will help classify the epileptic signal into normal, ictal and interictal changes in brain activity.

      CONCLUSION

The project is implemented in MATLAB. The code was run on two input signals obtained from the same patient. One input has seizures in 6 of the 55 recorded channels, and the other 
input had no seizures recorded in any of the 55 channels. Wavelet and Short-term Fourier Transform techniques were run on both the input signals. 

It was observed that while applying the wavelet transform to the input which had seizures, the computer was able to recognize 5 of the 6 seizures in the patient. But it also
recognized 3 seizure that were actually not present in the patient. While in the case of STFT on the input which had seizures, the computer was able to recognize % of the 6 
seizures. It also recognized 1 seizure that was not present in the patient. However, for the second input signal no seizures were detected in either of the two methods.

From the experiment we calculate the sensitivity of each method. The values of sensitivity are shown in the table above. STFT shows a sensitivity of approximately 86% and the 
wavelet transform shows a sensitivity of 80%. Hence, STFT performs a better job in classifying the seizures in an EEG signal compared to the wavelet transform.
