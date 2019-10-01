using CsvHelper;
using GMO.API.DeveloperTest.Contracts.Contracts;
using GMO.API.DeveloperTest.Helpers;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace GMO.API.DeveloperTest.DataLayer.DataManager
{
    public class CityDataManager
    {
        public List<CityInfoResponse> GetCityInfo()
        {
            var dataFile = AppContext.BaseDirectory + ConfigHelper.GetExcelConnString();
            List<CityInfoResponse> cityInfoResponse;

            using(TextReader fileReader = File.OpenText(dataFile))
            {
                var csv = new CsvReader(fileReader);
                csv.Configuration.HasHeaderRecord = false;
                csv.Read();
                cityInfoResponse = csv.GetRecords<CityInfoResponse>().ToList();
            }
            return cityInfoResponse;
        }
    }
}
