using System;
using AslaveCare.Domain.Constants;

namespace AslaveCare.Service.Helpers
{
    public static class GeolocalizationHelper
    {
        public static double GetDistanceBetweenCoordenates(double userLongitude, double userLatitude, double campainLongitude, double campanhaLatitude)
        {
            var distance = (ConstantGeolocalization.GEOLOCALIZATION_EARTH_RADIUS_KM *
                        Math.Acos(
                            Math.Cos(
                                (Math.PI / ConstantGeolocalization.GEOLOCALIZATION_RADIAN_DEGREE)
                                *
                                campanhaLatitude
                            )
                            *
                            Math.Cos(
                                (Math.PI / ConstantGeolocalization.GEOLOCALIZATION_RADIAN_DEGREE)
                                *
                                userLatitude
                            )
                            *
                            Math.Cos(
                                (Math.PI / ConstantGeolocalization.GEOLOCALIZATION_RADIAN_DEGREE)
                                *
                                userLongitude
                                -
                                (Math.PI / ConstantGeolocalization.GEOLOCALIZATION_RADIAN_DEGREE)
                                *
                                campainLongitude
                            )
                            +
                            Math.Sin(
                                (Math.PI / ConstantGeolocalization.GEOLOCALIZATION_RADIAN_DEGREE)
                                *
                                campanhaLatitude
                            )
                            *
                            Math.Sin(
                                (Math.PI / ConstantGeolocalization.GEOLOCALIZATION_RADIAN_DEGREE)
                                *
                                userLatitude
                            )
                        )
                    );
            return distance;
        }
    }
}
