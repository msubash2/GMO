using GMO.API.DeveloperTest.BusinessLayer;
using GMO.API.DeveloperTest.Contracts.Contracts;
using GMO.API.DeveloperTest.Contracts.Interface;

namespace GMO.API.DeveloperTest.ServiceImplementation
{
    public class SeekAverageService : ISeekAverageService
    {
        /// <summary>
        /// 
        /// </summary>
        public readonly SeekAverageManager _seekAverageManager;

        /// <summary>
        /// 
        /// </summary>
        public SeekAverageService()
        {
            _seekAverageManager = new SeekAverageManager();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        public int GetClosestToAverage(string request)
        {
            return _seekAverageManager.GetClosestToAverage(request);
        }
    }
}
