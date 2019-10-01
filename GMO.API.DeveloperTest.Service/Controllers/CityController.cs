using System;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using GMO.API.DeveloperTest.Contracts.Interface;
using System.Collections.Generic;
using GMO.API.DeveloperTest.Contracts.Contracts;

namespace GMO.API.DeveloperTest.Service.Controllers
{
    [Route("api/City")]
    [ApiController]
    public class CityController : ControllerBase
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly ICityService _CityService;

        /// <summary>
        /// 
        /// </summary>
        public CityController()
        {
            var configuration = new ConfigurationBuilder()
                                    .SetBasePath(AppContext.BaseDirectory)
                                    .AddJsonFile("appsettings.json")
                                    .Build();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="_cityService"></param>
        /// <param name="configuration"></param>
        [ActivatorUtilitiesConstructor]
        public CityController(ICityService _cityService, IConfiguration configuration)
        {
            _CityService = _cityService;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet("GetCityInfo")]
        public async Task<ActionResult<List<CityInfoResponse>>> GetCityInfo()
        {
            try
            {
                var response = await Task.Run(() => _CityService.GetCityInfo());
                return response;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}