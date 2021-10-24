## Author: Ruben <Ruben@DESKTOP-S1SVQ4F>
## Created: 2021-10-23
function bn = NewtonInterpolation(xValues,yValues)
  nodeList = {};
  newNodeList = {};
  bn = [];
  for i = 1:length(xValues)
    nodeList{i} = Node(-1, -1, xValues(i), yValues(i));
  endfor
  
  for i = 1:(length(nodeList) - 1)
    for j = 1:(length(nodeList) - 1)
      y = nodeList{j+1}.y-nodeList{j}.y;
      
      currentNodeLeft = nodeList{j};
      while(currentNodeLeft.left != -1);
        currentNodeLeft = currentNodeLeft.left;
      endwhile  
      
      currentNodeRight = nodeList{j+1};
      while(currentNodeRight.right != -1)
        currentNodeRight = currentNodeRight.right;
      endwhile
      
      x = currentNodeRight.x - currentNodeLeft.x;
      
      newNodeList{j} = Node(nodeList{j},nodeList{j+1},x,y);
    endfor
    nodeList = newNodeList;
    newNodeList = [];
    
    if(length(nodeList) == 1)
      break;
    endif   
  endfor
  
  i = 1;
  currentNode = nodeList{1};
  
  while(currentNode.left != -1)
    bn(i) = currentNode.y;
    i ++;
    currentNode = nodeList{i};
  endwhile
  
endfunction