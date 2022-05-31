package com.example;

import io.quarkus.runtime.Quarkus;
import io.quarkus.runtime.annotations.QuarkusMain;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

@QuarkusMain
public class Main {
    public double parseTempreature(String tempreature){
        var number = tempreature.replace(",",".");
        return Double.parseDouble(number);
    }
    public static void main(String[] args) {

        int x = 3;
        var filename = args[0];
        System.out.println(filename);
        //Quarkus.run(args);
        try {
            Files.readAllLines(Path.of("/home/abudi/work/docker-java-tutorial/demo/docker/data/data.csv")).stream().map(s -> s.split(";")).map(ar-> {
                var tempreature = new Month();
                int index =0;
                tempreature.year = Integer.parseInt(ar[0]);
                tempreature.temp = new double[12];
                tempreature.temp[index] = Double.parseDouble(ar[index++]);
                return tempreature;
            }).forEach(System.out::println);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

}

class Month {
    public int year;
    public double[] temp;

    @Override
    public String toString() {
        return super.toString();
    }
}

