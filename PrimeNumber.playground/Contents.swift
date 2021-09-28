/*: #PrimeNumbers Playground
 
 **Projet 1 Part 1*
 *
 ** This function will take in an integer and check to see if it is prime or not.  If it is prime, the function will return true, otherwise it will return false.
 ** To test this function, the program calls it 25 times, checking the first 25 natrual numbers.
 ** The program will output each number and state if it is prime or not
 */

import UIKit

func CheckIfPrime(numToCheck: Int) -> Bool
{
    if(numToCheck == 2)//2 IS primes
    {
        return true;
    }
    else if(numToCheck <= 1)//1 is NOT prime
    {
        return false;
    }
    
    //Only need to check half of the values smaller than the given numToChecks
    for index in stride(from:2, through: numToCheck/2, by: 1)
    {
        if((numToCheck % index) == 0)
        {
            return false;
        }
    }
    
    //No multiples could be found, therefor it must be prime
    return true;
}

//MAIN PROGRAMs

for index in 1...25
{
    if(CheckIfPrime(numToCheck: index))
    {
        print(index, "IS prime.")
    }
    else
    {
        print(index, "is NOT prime.")
    }
}

