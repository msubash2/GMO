using GMO.API.DeveloperTest.Contracts.Contracts;
using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;

namespace GMO.API.DeveloperTest.BusinessLayer
{
    /// <summary>
    /// 
    /// </summary>
    public class SeekAverageManager
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        public int GetClosestToAverage(string request)
        {
            int[] input = request.Split(',').Select(i => Int32.Parse(i)).ToArray();
            int avg = GetAverage(input);
            int closest = input[0];

            for (int i = 1; i < input.Length; i++)
            {
                if (Math.Abs(avg - input[i]) < Math.Abs(avg - closest))
                    closest = input[i];
            }
            return closest;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        private int GetAverage(int[] input)
        {
            int sum = 0;
            int i = 0;
            for(i = 0; i < input.Length; i++)
            {
                sum += input[i];
            }
            return sum / input.Length;
        }
    }
}
