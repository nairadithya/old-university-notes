import java.util.*;
public class linkedList{
	Node head;
	class Node {
		int data;
		Node next;
		Node(int data){
			this.data = data;
		}
	}
	void insert(int data){
		Node newNode = new Node(data);
		if(this.head == null){
			this.head.data = data;
			this.head.next = newNode;
		}
		else {
			Node currentNode = this.head;
			while(currentNode != null){
				currentNode = currentNode.next;
			}
			currentNode.data = data;
		}
	}
	void printList(){
		Node currentNode = this.head;
		while (currentNode!= null) {
			System.out.println(currentNode.data);
			currentNode = currentNode.next;
		}
	}
	public static void main(String[] args) {
		linkedList list = new linkedList();
		list.insert(5);
		list.printList();
	}
	
}
