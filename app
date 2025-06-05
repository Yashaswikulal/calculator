package com.example.calculator;

import java.util.Scanner;

public class App {
    public static void main(String[] args) {
        Calculator calc = new Calculator();
        Scanner sc = new Scanner(System.in);

        System.out.println("Simple Calculator");
        System.out.print("Enter first number: ");
        int a = sc.nextInt();

        System.out.print("Enter second number: ");
        int b = sc.nextInt();

        System.out.print("Choose operation (+, -, *, /): ");
        char op = sc.next().charAt(0);

        switch (op) {
            case '+':
                System.out.println("Result: " + calc.add(a, b));
                break;
            case '-':
                System.out.println("Result: " + calc.subtract(a, b));
                break;
            case '*':
                System.out.println("Result: " + calc.multiply(a, b));
                break;
            case '/':
                try {
                    System.out.println("Result: " + calc.divide(a, b));
                } catch (ArithmeticException e) {
                    System.out.println("Error: " + e.getMessage());
                }
                break;
            default:
                System.out.println("Invalid operation!");
        }

        sc.close();
    }
}
