import java.util.*;

public class Heap {
  int[] HeapArray;
  int index;
  Scanner sc = new Scanner(System.in);

  public Heap(int n) {
    HeapArray = new int[n];
    index = 0;
  }

  void input() {
    System.out.print("Enter the no. of elements in the heap:");
    int looplength = sc.nextInt();
    for (int i = 0; i < looplength; i++) {
      int input = sc.nextInt();
      this.insert(input);
    }
  }

  void Swap(int i1, int i2) {
    int t = HeapArray[i1];
    HeapArray[i1] = HeapArray[i2];
    HeapArray[i2] = t;
  }

  void insert(int k) {
    int i = index;
    HeapArray[index] = k;
    while (i > 0) {
      if (HeapArray[(i - 1) / 2] > HeapArray[i]) {
        this.Swap(HeapArray[i], HeapArray[(i - 1) / 2]);
        i = (i - 1) / 2;
      } else
        return;
    }
    index = index + 1;
  }

  void display() {
    System.out.println("DISPLAYING THE ARRAY");
    for (int i = 0; i < HeapArray.length; i++) {
      System.out.println(HeapArray[i]);
    }
  }

  public static void main(String[] args) {
    Heap h = new Heap(10);
    h.input();
    h.display();
  }
}
