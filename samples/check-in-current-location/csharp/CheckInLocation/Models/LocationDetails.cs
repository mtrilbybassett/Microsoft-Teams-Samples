﻿// <copyright file="AppInstallDetails.cs" company="Microsoft">
// Copyright (c) Microsoft. All rights reserved.
// </copyright>

using Newtonsoft.Json;

namespace CheckInLocation.Models
{
    /// <summary>
    /// Location details model class.
    /// </summary>
    public class LocationDetails<T>
    {
        [JsonProperty("latitude")]
        public object Latitude { get; set; }

        [JsonProperty("longitude")]
        public object Longitude { get; set; }
    }
}
