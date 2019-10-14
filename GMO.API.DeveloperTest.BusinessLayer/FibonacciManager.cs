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

            for (i = 0; i <= index; ++i)
            {
                nextNum = firstNum + secondNum;
                firstNum = secondNum;
                secondNum = (i == 0 ? 0 : nextNum);
            }
            return secondNum;
        }
    }
}
