# Dual Biometric Attendance System using MATLAB
A classroom attendance system using MATLAB that uses both facial recognition and fingerprint to enter the classroom

The algorithm used for the face recognition is PCA. Principal component analysis is one of the most effective face recognition techniques, which converts a correlated training set of variables into principal mode of variation through following orthogonal transformation procedure. Primarily PCA reduces definition requirement of an image by analyzing the principal components (feature extraction). The feature extraction may not incorporate much physical details, as they mostly include statistical characteristics. 

### System architecture
![Dual biometric attendance system](architecture.jpg? "Flow chart of the working process")

## Algorithms
### Facial recognition
Algorithm steps for PCA (Principal Component Analysis) algorithm implemented for the project:
1.	Acquire captured image and process it through standardization
2.	Calculate the covariance matrix and its eigenvector
3.	Find the eigenvalues and eigenvectors of the covariance matrix 
4.	The principal components are the eigenvectors with largest eigenvalues

For Recognition:
1.	Take input image
2.	Calculate distance between Eigenface of the input with the training data
3.	Find the top match through averaging the weight measurement

### Fingerprint recognition
The algorithm used for fingerprint recognition in this project is minutiae matching by scoring. Minutiae is the collection of ridge ending and ridge bifurcation features of a fingerprint. Ridges exclusively defines uniqueness of a fingerprint through their characteristics and relationship with neighboring ridges.  Extraction of these prominent features provides high efficiency in fingerprint recognition.
The steps of minutiae matching are given below:
1.	Image enhancement
2.	Mask segmentation
3.	Binarization
4.	Thinning
5.	Find minuate
6.	Filter false minuate
7.	Load database
8.	Compute matching score

