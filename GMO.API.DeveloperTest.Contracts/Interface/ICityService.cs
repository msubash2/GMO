using System;
using System.Text;
using System.ServiceModel;
using System.Collections.Generic;
using GMO.API.DeveloperTest.Contracts.Contracts;

namespace GMO.API.DeveloperTest.Contracts.Interface
{
    [ServiceContract(Name = "CityService")]
    public interface ICityService
    {
        [OperationContract]
        List<CityInfoResponse> GetCityInfo();
    }
}
