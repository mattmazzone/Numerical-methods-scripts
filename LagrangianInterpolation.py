class PolynomialElement:
    def __init__(self, y):
        self.y = y
        self.numerator = []
        self.denominator = 1


xValues = [1, 2, 4]
yValues = [8.1, 22.5, 78.9]

elementList = []

# Find the polynomial
for i in range(len(xValues)):
    elementList.append(PolynomialElement(yValues[i]))
    for j in range(len(xValues)):
        if i != j:
            elementList[i].denominator *= (xValues[i] - xValues[j])
            elementList[i].numerator.append(xValues[j])

# Solve for P(x)
P = 0
x = 3

for i in elementList:
    numeratorProduct = 1
    for j in i.numerator:
        numeratorProduct *= (x - j)

    P += (numeratorProduct / i.denominator) * i.y

print(P)