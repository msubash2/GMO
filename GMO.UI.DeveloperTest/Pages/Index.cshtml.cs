using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using GMO.UI.DeveloperTest.Models;
using GMO.UI.DeveloperTest.Helpers;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using System.Net;
using System.IO;
using Newtonsoft.Json;

namespace GMO.UI.DeveloperTest.Pages
{
    public class IndexModel : PageModel
    {
        public string CitySort { get; set; }
        public string StateSort { get; set; }
        public string PopulationSort { get; set; }
        public string CurrentSort { get; set; }

        public PaginatedList<CityInfo> CityInfo { get; set; }

        public List<CityInfo> GetCityInfo()
        {
            var configuration = new ConfigurationBuilder().SetBasePath(AppContext.BaseDirectory).AddJsonFile("appsettings.json").Build();
            var connString = configuration.GetConnectionString("CityApiUrl");
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(connString);

            using(HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            using(Stream stream = response.GetResponseStream())
            using(StreamReader reader = new StreamReader(stream))
            {
                var output = reader.ReadToEnd();
                List<CityInfo> cityData = JsonConvert.DeserializeObject<List<CityInfo>>(output);
                return cityData;
            }
        }

        public async Task OnGetAsync(string sortOrder, int? pageIndex)
        {
            CitySort = sortOrder == "City" ? "City_Desc" : "City";
            StateSort = sortOrder == "State" ? "State_Desc" : "State";
            PopulationSort = sortOrder == "Population" ? "Population_Desc" : "Population";
            pageIndex = pageIndex == null ? 1 : pageIndex;
            CurrentSort = sortOrder;

            IQueryable<CityInfo> ItemList = GetCityInfo().AsQueryable();

            switch (sortOrder)
            {
                case "City":
                    ItemList = ItemList.OrderBy(s => s.City);
                    break;
                case "City_Desc":
                    ItemList = ItemList.OrderByDescending(s => s.City);
                    break;
                case "State":
                    ItemList = ItemList.OrderBy(s => s.State);
                    break;
                case "State_Desc":
                    ItemList = ItemList.OrderByDescending(s => s.State);
                    break;
                case "Population":
                    ItemList = ItemList.OrderBy(s => s.Population);
                    break;
                case "Population_Desc":
                    ItemList = ItemList.OrderByDescending(s => s.Population);
                    break;
                default:
                    ItemList = ItemList.OrderBy(s => s.City);
                    break;
            }
            CityInfo = PaginatedList<CityInfo>.CreateAsync(ItemList.AsNoTracking(), (int)pageIndex, 20);
        }
    }
}
