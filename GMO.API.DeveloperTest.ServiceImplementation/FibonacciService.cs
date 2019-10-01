using GMO.API.DeveloperTest.BusinessLayer;
using GMO.API.DeveloperTest.Contracts.Interface;

namespace GMO.API.DeveloperTest.ServiceImplementation
{
    public class FibonacciService : IFibonacciService
    {
        /// <summary>
        /// 
        /// </summary>
        public readonly FibonacciManager _fibonacciManager;

        /// <summary>
        /// 
        /// </summary>
        public FibonacciService()
        {
            _fibonacciManager = new FibonacciManager();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="index"></param>
        /// <returns></returns>
        public decimal GetFibonacciByIndex(int index)
        {
           return _fibonacciManager.GetFibonacciByIndex(index);
        }
    }
}
