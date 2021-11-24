package thu;

import java.util.Arrays;

public class thuat_toan {

//    public static String[] solution(String[] arg1) {
//
//        for(int i=0;i<arg1.length-1;i++){
//            for(int j=i+1;j<arg1.length;j++){
//                if(arg1[i].length()>arg1[j].length()){
//                    String temp = arg1[j];
//                    for (int k=j;k>i;k--){
//                        arg1[k]=arg1[k-1];
//                    }
//                    arg1[i]=temp;
//
//                }
//            }
//        }
//        return arg1;
//    }
public static String[] solution(String[] arg1) {
        int i, j;
        String temp;
        for (i = 0; i <arg1.length-1; i++){
            for (j = 0; j <arg1.length-i-1; j++){
                if (arg1[j].length() > arg1[j+1].length()){
                    temp = arg1[j];
                    arg1[j]= arg1[j+1];
                    arg1[j+1] = temp;
                }
            }
        }
        return arg1;
    }
    public static void main(String[] args) {
        String[] arg1 = {"abc", "", "aaa", "a", "zzz"};
        String[] thu = solution(arg1);
        System.out.println(Arrays.toString(thu));
    }

}
