import numpy as np 
from sklearn.linear_model import Perceptron

np.random.seed(42)

N_Pontos = 1000
X_train = (np.random.rand(N_Pontos,2)*20)-10
Y_train = np.zeros(N_Pontos)

for i in range(N_Pontos):
    if (X_train[i, 0] + X_train[i, 1]) > 0: 
        Y_train[i] = 1
    else:
        Y_train[i] = 0

model = Perceptron()
model.fit(X_train, Y_train)

w1,w2 = model.coef_[0]
b = model.intercept_[0]

print(f"Peso 1: {w1}")
print(f"Peso 2: {w2}")
print(f"Baias: {b}")

