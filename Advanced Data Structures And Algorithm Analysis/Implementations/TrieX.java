// Java Program to Implement TrieX
// Data Structure
import java.util.*;
// Helper Class TrieXNode
class TrieXNode {
    TrieXNode[] children;
    boolean isEndOfWord;

    public TrieXNode() {
          // Assuming lowercase English letters
        children = new TrieXNode[26];
        isEndOfWord = false;
    }
}

// Class TrieX
public class TrieX {
    private TrieXNode root;

      // Constructor
    public TrieX() {
        root = new TrieXNode();
    }

    // Insert a word into the TrieX
    public void insert(String word) {
        TrieXNode current = root;
        for (int i = 0; i < word.length(); i++) {
            char ch = word.charAt(i);
            if (current.children[ch - 'a'] == null) {
                current.children[ch - 'a'] = new TrieXNode();
            }
            current = current.children[ch - 'a'];
        }
        current.isEndOfWord = true;
    }

    // Search for a word in the TrieX
    public boolean search(String word) {
        TrieXNode current = root;
      
        for (int i = 0; i < word.length(); i++) {
            char ch = word.charAt(i);
          
            if (current.children[ch - 'a'] == null) {
                  // Word not found
                return false; 
            }
          
            current = current.children[ch - 'a'];
        }
        return current != null && current.isEndOfWord;
    }

    // Check if a given prefix exists in the TrieX
    public boolean startsWith(String prefix) {
        TrieXNode current = root;
        for (int i = 0; i < prefix.length(); i++) {
            char ch = prefix.charAt(i);
          
            if (current.children[ch - 'a'] == null) {
                  // Prefix not found
                return false; 
            }
          
            current = current.children[ch - 'a'];
        }
        return true;
    }

    // Main Method
    public static void main(String[] args) {
        TrieX trie = new TrieX();
        Scanner sc = new Scanner(System.in);
        System.out.println("The TrieX Program");
        int breakloop = 1;
        System.out.println("Press 0 to exit");
        System.out.println("Enter the option to perform \n 1. Insert a string \n 2. Search a string 0. Exit");
        int choice = sc.nextInt();
        while(breakloop != 0){
                switch(choice) {
                    case 1:
                        System.out.println("Enter the string to insert into the tree.");
                        String inputString = sc.nextLine();
                        trie.insert(inputString);
                        break;
                    case 2:
                        System.out.println("Enter the string to search");
                        String inputString2 = sc.nextLine();
                        trie.search(inputString2);
                    case 0:
                        breakloop = 0;
                        break;
                        }
                }
        }
    }
