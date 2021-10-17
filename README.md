# Dual Biometric Attendance System using MATLAB
A classroom attendance system using MATLAB that uses both facial recognition and fingerprint to enter the classroom

The algorithm used for the face recognition is PCA. Principal component analysis is one of the most effective face recognition techniques, which converts a correlated training set of variables into principal mode of variation through following orthogonal transformation procedure. Primarily PCA reduces definition requirement of an image by analyzing the principal components (feature extraction). The feature extraction may not incorporate much physical details, as they mostly include statistical characteristics. 
Algorithm steps for PCA algorithm implemented for the project:
1.	Acquire captured image and process it through standardization
2.	Calculate the covariance matrix and its eigenvector
3.	Find the eigenvalues and eigenvectors of the covariance matrix 
4.	The principal components are the eigenvectors with largest eigenvalues
For Recognition:
1.	Take input image
2.	Calculate distance between Eigenface of the input with the training data
3.	Find the top match through averaging the weight measurement

