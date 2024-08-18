import java.util.LinkedList;
import java.util.ArrayList;
import java.util.Queue;
import java.util.List;
public static void main(String[] args) {

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
                     visited = true;
                     q.offer(x);
            }
            }
    }
      }
    }
}