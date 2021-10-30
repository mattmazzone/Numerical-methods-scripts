class Node:
	def __init__(self, left, right, x, y):
		self.left = left
		self.right = right
		self.x = x
		self.y = y


# X and Y values
xVal = [1.0, 2.0, 3.0, 4.0]
yVal = [-7.5, -4.3, 14.5, 65.1]

nodeList = []
newNodeList = []

bn = []

for i in range(len(xVal)):
	nodeList.append(Node(-1, -1, xVal[i], yVal[i]))

for j in range(len(xVal) - 1):
	for i in range(len(nodeList) - 1):
		y = nodeList[i + 1].y - nodeList[i].y

		currentNodeLeft = nodeList[i]
		while currentNodeLeft.left != -1:
			currentNodeLeft = currentNodeLeft.left

		currentNodeRight = nodeList[i+1]
		while currentNodeRight.right != -1:
			currentNodeRight = currentNodeRight.right

		x = currentNodeRight.x - currentNodeLeft.x

		newNodeList.append(Node(nodeList[i], nodeList[i+1], x, y/x))

	nodeList = newNodeList
	newNodeList = []

	if len(nodeList) == 1:
		break

i = 0
currentNode = nodeList[i]
while currentNode.left != -1:
	bn.append(currentNode.y)
	i += 1
	currentNode = currentNode.left;

bn.append(currentNode.y)

# print all b values
for i in bn:
	print(i)
