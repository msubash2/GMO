using System.Runtime.Serialization;

namespace GMO.API.DeveloperTest.Contracts.Contracts
{
    [DataContract]
    public class CityInfoResponse
    {
        [DataMember]
        public string City { get; set; }

        [DataMember]
        public string State { get; set; }

        [DataMember]
        public int Population { get; set; }
    }
}
