namespace GMO.API.DeveloperTest.BusinessLayer
{
    /// <summary>
    /// 
    /// </summary>
    public class FibonacciManager
    {
        public decimal GetFibonacciByIndex(int index)
        {
            decimal firstNum = 0;
            decimal secondNum = 1;
            decimal nextNum;
            decimal i;

            for (i = 2; i < index; ++i)
            {
                nextNum = firstNum + secondNum;
                firstNum = secondNum;
                secondNum = nextNum;
            }
            return secondNum;
        }
    }
}
