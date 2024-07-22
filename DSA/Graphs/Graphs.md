Graphs are nodes with links to each other. These links are defined by a matrix known as an **adjacency matrix**.

The best way to store such links is (under the assumption that the graphs in question are **bi-directional**) to store only the upper triangle of the adjacency matrix, while ignoring the diagonal.
# Storing Graph Data
```java
int a[] = new int[c][c];
int upperTriangleSize = Math.fact(c)/(Math.fact(c-2)*2) 
int graph_data[] = new int[upperTriangleSize];
int k;
for(i = 0; i < c; i++){
	for(j = i+1;j < c;j++){
		graph_data[k] =  a[i][j]
		k++;
	}
}
```

$$
\begin{bmatrix}
a_{11} & a_{12} & \cdots & a_{1n} \\
a_{21} & a_{22} & \cdots & a_{2n} \\
\vdots & &\ddots & \vdots \\
a_{n1} & a_{n2} & \cdots & a_{nn} \\
\end{bmatrix}
$$

# Adjacency Lists
This consists of a one-dimensional array, specifically of pointers.
For an example graph,
$$
\begin{align*}
&a \rightarrow b \rightarrow c \rightarrow d  \\
&\downarrow \\
&b \rightarrow a \rightarrow c \\
&\downarrow \\
&c \rightarrow a \rightarrow b \\
&\downarrow \\
&d \rightarrow a \rightarrow e\\
&\downarrow \\
&e \rightarrow d \\
\end{align*}
$$

We have a linked list of linked lists. The problem here is that links are represented twice. 

This is an optimization for when graphs have very few links. 

# The method of traversal(visit all nodes).

There are two algorithms of traversal: 
1. Breadth-First Search - which involves the usage of queue
2. Depth-First Search - which involves the usage of stack

## Breadth-First Search
Breadth-first involves selecting a root node, and choosing a neighbour node. 

Revising queues, they have a First-In, First Out approach, insertion at the rear and deletion at the front.
The procedure follows:
- The queue starts by inserting any root node, say for example A. 
- Now A is dequeued and stored in the result.
- Queue all neighbouring nodes of A.
- The first node is dequeued.
- Upon dequeueing, all neighbouring nodes are checked if it's in the queue. If not, they are queued in.
	- Let's say B is taken, and B is connected to C, and C is already connected to A and B.
	- A and C will not be queued.
- This iterates until there are no more nodes.

Clearly, this depends on the number of edges in the graph. The maximum number of edges in a graph is $^nC_2$.

The functions required in this queue are:
- `Insert()`
- `Delete()`
- `Traverse()`

This will be covered in the next lab.
>[!faq] NOTE - This will not work for nodes which are not connected to any node in the graph.
>

# Depth-First Search
