using System.Collections.Generic;
using GMO.API.DeveloperTest.BusinessLayer;
using GMO.API.DeveloperTest.Contracts.Contracts;
using GMO.API.DeveloperTest.Contracts.Interface;

namespace GMO.API.DeveloperTest.ServiceImplementation
{
    public class CityService : ICityService
    {
        /// <summary>
        /// 
        /// </summary>
        public readonly CityManager _cityManager;

        public CityService()
        {
            _cityManager = new CityManager();
        }

        public List<CityInfoResponse> GetCityInfo()
        {
            return _cityManager.GetCityInfo();
        }
    }
}
