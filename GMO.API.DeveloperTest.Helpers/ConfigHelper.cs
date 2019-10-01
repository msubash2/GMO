using System;
using System.Text;
using System.Collections.Generic;
using Microsoft.Extensions.Configuration;

namespace GMO.API.DeveloperTest.Helpers
{
    public static class ConfigHelper
    {
        public static string GetExcelConnString()
        {
            var configuration = new ConfigurationBuilder().SetBasePath(AppContext.BaseDirectory).AddJsonFile("appsettings.json").Build();
            var connString = configuration.GetConnectionString("ExcelConnString");
            return connString;
        }
    }
}
