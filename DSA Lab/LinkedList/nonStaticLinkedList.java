import java.io.*;
// Java program to implement
// a Singly Linked List
public class LinkedList {
	Node head;
		class Node {
			int data;
			Node next;
		// Constructor
		Node(int d)
		{
		data = d;
		next = null;
		}
	}
	// **************INSERTION**************
	// Method to insert a new node
	public LinkedList insert(int data)
	{
		// Create a new node with given data
		Node new_node = new Node(data);
		new_node.next = null;
		// If the Linked List is empty,
		// then make the new node as head
		if (this.head == null) {
			this.head = new_node;
		}
		else {
		// Else traverse till the last node
		// and insert the new_node there
			Node last = this.head;
			while (last.next != null) {
				last = last.next;
			}
		// Insert the new_node at last node
		last.next = new_node;
		}
		// Return the list by head
		return this;
	}
	// **************TRAVERSAL**************
	// Method to print the LinkedList.
	public void printList()
	{
		Node currNode = this.head;
		System.out.print("\nLinkedList: ");
		// Traverse through the LinkedList
		while (currNode != null) {
			System.out.print(currNode.data + " ");
			currNode = currNode.next;
		}
	System.out.println("\n");
	}
	// **************DELETION BY KEY**************
	// Method to delete a node in the LinkedList by KEY
	public LinkedList deleteByKey(int key){
		// Store head node
		Node currNode = this.head, prev = null;
		// CASE 1:
		// If head node itself holds the key to be deleted
		if (currNode != null && currNode.data == key) {
			this.head = currNode.next; // Changed head
			// Display the message
			System.out.println(key + " found and deleted");
			// Return the updated List
			return this;
		}
		// CASE 2:
		// If the key is somewhere other than at head
		// Search for the key to be deleted,
		// keep track of the previous node
		// as it is needed to change currNode.next
		while (currNode != null && currNode.data != key) {
			// If currNode does not hold key
			// continue to next node
			prev = currNode;
			currNode = currNode.next;
		}
		// If the key was present, it should be at currNode
		// Therefore the currNode shall not be null
		if (currNode != null) {
			// Since the key is at currNode
			// Unlink currNode from linked list
			prev.next = currNode.next;
			// Display the message
			System.out.println(key + " found and deleted");
		}
		// CASE 3: The key is not present
		// If key was not present in linked list
		// currNode should be null
		if (currNode == null) {
			// Display the message
			System.out.println(key + " not found");
		}
		// return the List
		return this;
	}
	// **************DELETION AT A POSITION**************
	// Method to delete a node in the LinkedList by POSITION
	public LinkedList deleteAtPosition(int index) {
		// Store head node
		Node currNode = this.head, prev = null;
		// CASE 1:
		// If index is 0, then head node itself is to be
		// deleted
		if (index == 0 && currNode != null) {
			this.head = currNode.next; // Changed head
			// Display the message
			System.out.println(index + " position element deleted");
			// Return the updated List
			return this;
		}
		// CASE 2:
		// If the index is greater than 0 but less than the
		// size of LinkedList

		// The counter
		int counter = 0;
		// Count for the index to be deleted,
		// keep track of the previous node
		// as it is needed to change currNode.next
		while (currNode != null) {
				if (counter == index) {
				// Since the currNode is the required
				// position Unlink currNode from linked list
				prev.next = currNode.next;
				// Display the message
				System.out.println(index + " position element deleted");
				break;
			}
			else {
			// If current position is not the index
			// continue to next node
			prev = currNode;
			currNode = currNode.next;
			counter++;
			}

		}
		// If the position element was found, it should be
		// at currNode Therefore the currNode shall not be
		// null

		// CASE 3: The index is greater than the size of the
		// LinkedList
		// In this case, the currNode should be null
		if (currNode == null) {
			// Display the message
			System.out.println(index + " position element not found");
		}
		// return the List
		return this;
	}
	// **************MAIN METHOD**************
	// method to create a Singly linked list with n nodes
	public static void main(String[] args){
		/* Start with the empty list. */
		LinkedList list = new LinkedList();
		//
		// ******INSERTION******
		//
		// Insert the values
		list.insert(1);
		list.printList();

	}
}
