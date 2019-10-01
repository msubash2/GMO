using GMO.API.DeveloperTest.Contracts.Contracts;
using GMO.API.DeveloperTest.DataLayer.DataManager;
using System.Collections.Generic;

namespace GMO.API.DeveloperTest.BusinessLayer
{
    public class CityManager
    {
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public List<CityInfoResponse> GetCityInfo()
        {
            var cityDataManager = new CityDataManager();
            return cityDataManager.GetCityInfo();
        }
    }
}
