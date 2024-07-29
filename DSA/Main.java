import java.util.*;

public class Main {
    public static void main(String[] args) {
        int c = 5;
        int a[][] = new int[c][c];
        int upperTriangleSize = (c*(c-1))/2;
        int graph_data[] = new int[upperTriangleSize];
        int k = 0;
        for(int i = 0; i < c; i++){
            for(int j = i+1;j < c;j++){
                graph_data[k] =  a[i][j];
                k++;
            }
        }
    }
}