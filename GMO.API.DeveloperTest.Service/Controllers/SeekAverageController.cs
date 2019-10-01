using System;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using GMO.API.DeveloperTest.Contracts.Interface;
using GMO.API.DeveloperTest.Contracts.Contracts;
using System.Collections.Generic;

namespace GMO.API.DeveloperTest.Service.Controllers
{
    [Microsoft.AspNetCore.Mvc.Route("api/SeekAverage")]
    [ApiController]
    public class SeekAverageController : ControllerBase
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly ISeekAverageService _SeekAverageService;

        /// <summary>
        /// 
        /// </summary>
        public SeekAverageController()
        {
            var configuration = new ConfigurationBuilder()
                                    .SetBasePath(AppContext.BaseDirectory)
                                    .AddJsonFile("appsettings.json")
                                    .Build();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="seekAverageService"></param>
        /// <param name="configuration"></param>
        [ActivatorUtilitiesConstructor]
        public SeekAverageController(ISeekAverageService seekAverageService, IConfiguration configuration)
        {
            _SeekAverageService = seekAverageService;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        /// Parameter is string because of an known issue with Swagger (int[] has an issue) and requires custom coding
        /// Parameter Ex: 1, 2, 3, 5, -1, 7, 145, -33, 22, 14
        [HttpGet("GetClosestToAverage")]
        public async Task<ActionResult<int>> GetClosestToAverage(string request)
        {
            try
            {
                var response = await Task.Run(() => _SeekAverageService.GetClosestToAverage(request));
                return response;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
