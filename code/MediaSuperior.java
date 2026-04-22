// Java: programa que cuenta los valores mayores que la media
import java.io.*;
import java.util.*;

public class MediaSuperior {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int listLen = Integer.parseInt(br.readLine());
        if (listLen > 0 && listLen < 100) {
            int[] intList = new int[listLen];
            int sum = 0;
            for (int i = 0; i < listLen; i++) {
                intList[i] = Integer.parseInt(br.readLine());
                sum += intList[i];
            }
            int average = sum / listLen;
            int result = 0;
            for (int num : intList) {
                if (num > average) result++;
            }
            System.out.println("Número de valores > media: " + result);
        } else {
            System.out.println("Error: longitud no válida");
        }
    }
}
