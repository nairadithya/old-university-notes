import java.util.LinkedList;
import java.util.ArrayList;
import java.util.Queue;
import java.util.List;

class BreadthFirstSearch {
  static void bfs(List<List<Integer>> adj, int s, boolean[] visited) {
      // Breadth first search requires a queue
      Queue<Integer> q = new LinkedList<>();
      q.offer(s);
      while(!q.isEmpty()){
          int curr = q.poll();
          System.out.print(curr + "");

         for(int x : adj.get(curr)){
             if (!visited[x]) {
                 visited[x] = true;
                 q.offer(x);
                }
        }
        }
        }
    static void addEdge(List<List<Integer>> adj,
                        int u, int v) {
        adj.get(u).add(v);
        adj.get(v).add(u);
    }

    public static void main(String[] args) {
        // Number of vertices in the graph
        int V = 5;

        // Adjacency list representation of the graph
        List<List<Integer>> adj = new ArrayList<>();
        for (int i = 0; i < V; i++) {
            adj.add(new ArrayList<>());
        }

        // Add edges to the graph
        addEdge(adj, 0, 1);
        addEdge(adj, 0, 2);
        addEdge(adj, 1, 3);
        addEdge(adj, 1, 4);
        addEdge(adj, 2, 4);

        // Mark all the vertices as not visited
        boolean[] visited = new boolean[V];

        // Perform BFS traversal starting from vertex 0
        System.out.println("BFS starting from 0 : ");
        bfs(adj, 0, visited);
    }
}
