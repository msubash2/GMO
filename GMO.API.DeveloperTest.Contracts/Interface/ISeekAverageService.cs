using System;
using System.Text;
using System.ServiceModel;
using System.Collections.Generic;

namespace GMO.API.DeveloperTest.Contracts.Interface
{
    /// <summary>
    /// 
    /// </summary>
    [ServiceContract(Name = "SeekAverageService")]
    public interface ISeekAverageService
    {
        [OperationContract]
        int GetClosestToAverage(string request);
    }
}
