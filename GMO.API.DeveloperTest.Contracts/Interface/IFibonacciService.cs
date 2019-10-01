using System;
using System.Text;
using System.ServiceModel;
using System.Collections.Generic;

namespace GMO.API.DeveloperTest.Contracts.Interface
{
    [ServiceContract(Name = "FibonacciService")]
    public interface IFibonacciService
    {
        [OperationContract]
        decimal GetFibonacciByIndex(int index);
    }
}
