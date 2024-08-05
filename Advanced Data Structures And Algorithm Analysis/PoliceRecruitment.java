import java.util.*;
class PoliceRecruitment {
int length;
int[][] RecruitmentList;
Scanner sc = new Scanner(System.in);
// ID, Height, Running, Long Jump, High Jump, Average
    void initVals(int input){
	    this.length = input;
	    int[] RankedList = new int[length];
	    RecruitmentList = new int[length][6];
    }
    void ScoreCalculator(){
        for(int i = 0;i<length;i++){
            this.RecruitmentList[i][5] = this.RecruitmentList[i][1] + this.RecruitmentList[i][2]+this.RecruitmentList[i][3]+this.RecruitmentList[i][4];
        }
}
    void inputFunc(){
	    for(int i = 0;i<this.length;i++){
		    System.out.print("Enter the ID Of the candidate: ");
		    this.RecruitmentList[i][0] = sc.nextInt();
		    System.out.print("Enter the Height Score Of the candidate: ");
		    this.RecruitmentList[i][1] = sc.nextInt();
		    System.out.print("Enter the Running Score Of the candidate: ");
		    this.RecruitmentList[i][2] = sc.nextInt();
		    System.out.print("Enter the Long Jump Score Of the candidate: ");
		    this.RecruitmentList[i][3] = sc.nextInt();
		    System.out.print("Enter the High Jump Score Of the candidate: ");
		    this.RecruitmentList[i][4] = sc.nextInt();
    }
    }
    void sort() {
	    boolean swapped = false;
	    for(int i = 1;i<length;i++){
		    for(int j = 0;j<length - i - 1;j++)
		    if(RecruitmentList[j][5]<RecruitmentList[j+1][5]){
			    this.RowSwap(j,j+1);
			    swapped = true;
		    }
		    if(swapped == false){
			    break;
		    }
	    }
	   }
    void RowSwap(int a,int b){
	    int[] swap = new int[6];
	    swap = RecruitmentList[a];
	    RecruitmentList[a]= RecruitmentList[b];
	    RecruitmentList[b]= swap;
    }
    void display(){
	    System.out.print("ID\tHeight Score \t Running Score \t Long Jump Score \tHigh Jump Score\n");
	    for(int i = 0;i<length;i++){
		    for(int j = 0;j<6;j++){
		    System.out.print(RecruitmentList[i][j]+"\t");
		    }
		    System.out.println();
	    }
    }
}
class Main { 
    public static void main(String args[]){
       PoliceRecruitment PR = new PoliceRecruitment();
       PR.initVals(2);
       PR.inputFunc();
       PR.ScoreCalculator();
       PR.sort();
       PR.display();
    }
}
