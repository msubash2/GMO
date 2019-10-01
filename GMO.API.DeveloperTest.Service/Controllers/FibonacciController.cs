using System;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using GMO.API.DeveloperTest.Contracts.Interface;

namespace GMO.API.DeveloperTest.Service.Controllers
{
    [Route("api/Fibonacci")]
    [ApiController]
    public class FibonacciController : ControllerBase
    {
        /// <summary>
        /// 
        /// </summary>
        private readonly IFibonacciService _FibonacciService;

        /// <summary>
        /// 
        /// </summary>
        public FibonacciController()
        {
            var configuration = new ConfigurationBuilder()
                                    .SetBasePath(AppContext.BaseDirectory)
                                    .AddJsonFile("appsettings.json")
                                    .Build();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="fibonacciService"></param>
        /// <param name="configuration"></param>
        [ActivatorUtilitiesConstructor]
        public FibonacciController(IFibonacciService fibonacciService, IConfiguration configuration)
        {
            _FibonacciService = fibonacciService;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="index"></param>
        /// <returns></returns>
        [HttpGet("GetFibonacciByIndex")]
        public async Task<ActionResult<decimal>> GetFibonacciByIndex(int index)
        {
            try
            {
                var response = await Task.Run(() => _FibonacciService.GetFibonacciByIndex(index));
                return response;
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
    }
}