/**
* The IntroToApexTest class is used to test the methods in the IntroToApex class.
* It contains individual test methods for each method in the class, validating their functionality and expected outcomes.
* The test methods utilize the Salesforce Assert class to assert and validate the results.
* The main purpose of this test class is to ensure the accuracy and correctness of the methods in the IntroToApex class.

* @author Gayathri Addagada - Cloud Code 
*/
@isTest
private class IntroToApexTest {

    @IsTest
    static void testAddition() {
        Integer result = IntroToApex.addition();
        Assert.areEqual(10, result, 'Incorrect addition. Expected result is 10.');
    }

    @IsTest
    static void testSubtraction() {
        Integer result = IntroToApex.subtraction();
        Assert.areEqual(5, result, 'Incorrect subtraction result');
    }

    @IsTest
    static void testMultiplication() {
        Integer result = IntroToApex.multiplication(5);
        Assert.areEqual(10, result, 'Incorrect multiplication result');

        result = IntroToApex.multiplication(-5);
        Assert.areEqual(-10, result, 'Incorrect negative multiplication result');

        result = IntroToApex.multiplication(0);
        Assert.areEqual(0, result, 'Incorrect multiplication by zero result');

        result = IntroToApex.multiplication(10);
        Assert.areEqual(20, result, 'Incorrect multiplication result');
    }

    @IsTest
    static void testDivision() {
        Decimal result = IntroToApex.division(10, 5);
        Assert.areEqual(2, result, 'Incorrect division result');


        result = IntroToApex.division(8, 2);
        Assert.areEqual(4, result, 'Incorrect division result');

        result = IntroToApex.division(0, 5);
        Assert.areEqual(0, result, 'Incorrect division by zero result');

        result = IntroToApex.division(3, 2);
        Assert.areEqual(1.5, result, 'Incorrect division result');
    }

    @IsTest
    static void testMyName() {
        String result = IntroToApex.myName();

        Boolean isNotEmpty = String.isNotBlank(result);
        Assert.isTrue(isNotEmpty, 'myName method should return a non-empty String');
    }

    @IsTest
    static void testConcatenateStrings() {
        String result = IntroToApex.concatenateStrings('Hello', 'World');
        Assert.areEqual('HelloWorld', result, 'Incorrect concatenateStrings result');
        result = IntroToApex.concatenateStrings('Hello', 'Cloud');
        Assert.areEqual('HelloCloud', result, 'Incorrect concatenateStrings result');
    }

    @IsTest
    static void testIsNegative() {
        Boolean result = IntroToApex.isNegative(10);
        Assert.areEqual(false, result, 'Incorrect isPositive result');

        result = IntroToApex.isNegative(-10);
        Assert.areEqual(true, result, 'Incorrect isPositive result');
    }

    @IsTest
    static void testCalculateMonthlyPaycheck() {
        Assert.areEqual(1600.0, IntroToApex.calculateMonthlyPaycheck(40.0, (Double)10.0), 'Incorrect monthly paycheck for 40.0 rate and 10.0 hours');
        Assert.areEqual(0.0, IntroToApex.calculateMonthlyPaycheck(0.0, (Double)10.0), 'Incorrect monthly paycheck for 0.0 rate and 10.0 hours');
    }
}