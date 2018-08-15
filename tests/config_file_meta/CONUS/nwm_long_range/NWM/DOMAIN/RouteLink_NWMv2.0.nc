md5sum: 199170022630ed2c274823a008918a74  /glade/work/jamesmcc/domains/private/CONUS/NWM/DOMAIN/RouteLink_NWMv2.0.nc
ncdump -h: netcdf RouteLink_NWMv2.0 {
dimensions:
	feature_id = 2729077 ;
	IDLength = 15 ;
variables:
	int link(feature_id) ;
		link:long_name = "Link ID (NHDFlowline_network COMID)" ;
		link:cf_role = "timeseries_id" ;
		link:coordinates = "lat lon" ;
	int from(feature_id) ;
		from:long_name = "From Link ID (PlusFlow table FROMCOMID for every TOCOMID)" ;
		from:coordinates = "lat lon" ;
	int to(feature_id) ;
		to:long_name = "To Link ID (PlusFlow table TOCOMID for every FROMCOMID)" ;
		to:coordinates = "lat lon" ;
	float lon(feature_id) ;
		lon:long_name = "longitude of the segment midpoint" ;
		lon:units = "degrees_east" ;
		lon:standard_name = "longitude" ;
		lon:coordinates = "lat lon" ;
	float lat(feature_id) ;
		lat:long_name = "latitude of the segment midpoint" ;
		lat:units = "degrees_north" ;
		lat:standard_name = "latitude" ;
		lat:coordinates = "lat lon" ;
	float alt(feature_id) ;
		alt:long_name = "Elevation in meters from the North American Vertical Datum 1988 (NADV88) at start node (MaxElevSmo)" ;
		alt:standard_name = "height" ;
		alt:units = "m" ;
		alt:positive = "up" ;
		alt:axis = "Z" ;
		alt:coordinates = "lat lon" ;
	int order(feature_id) ;
		order:long_name = "Stream order (Strahler)" ;
		order:coordinates = "lat lon" ;
	float Qi(feature_id) ;
		Qi:long_name = "Initial flow in link (CMS)" ;
		Qi:coordinates = "lat lon" ;
	float MusK(feature_id) ;
		MusK:long_name = "Muskingum routing time (s)" ;
		MusK:coordinates = "lat lon" ;
	float MusX(feature_id) ;
		MusX:long_name = "Muskingum weighting coefficient" ;
		MusX:coordinates = "lat lon" ;
	float Length(feature_id) ;
		Length:long_name = "Stream length (m)" ;
		Length:coordinates = "lat lon" ;
	float n(feature_id) ;
		n:long_name = "Manning\'s roughness" ;
		n:coordinates = "lat lon" ;
	float So(feature_id) ;
		So:long_name = "Slope (meters/meters from NHDFlowline_network.SLOPE)" ;
		So:coordinates = "lat lon" ;
	float ChSlp(feature_id) ;
		ChSlp:long_name = "Channel side slope" ;
		ChSlp:coordinates = "lat lon" ;
	float BtmWdth(feature_id) ;
		BtmWdth:long_name = "Bottom width of channel (m)" ;
		BtmWdth:units = "m" ;
		BtmWdth:coordinates = "lat lon" ;
	int NHDWaterbodyComID(feature_id) ;
		NHDWaterbodyComID:coordinates = "lat lon" ;
		NHDWaterbodyComID:long_name = "ComID of NHDWaterbody feature associated using spatial join (intersection) between NHDFlowline_network and Waterbodies" ;
	float time ;
		time:standard_name = "time" ;
		time:long_name = "time of measurement" ;
		time:units = "days since 2000-01-01 00:00:00" ;
	char gages(feature_id, IDLength) ;
		gages:long_name = "NHD Gage Event ID from SOURCE_FEA field in Gages feature class" ;
		gages:coordinates = "lat lon" ;
	short Kchan(feature_id) ;
		Kchan:long_name = "channel conductivity" ;
		Kchan:units = "mm h-1" ;
		Kchan:coordinates = "lat lon" ;
	int ascendingIndex(feature_id) ;
		ascendingIndex:long_name = "Index to use for sorting IDs (ascending)" ;
	float nCC(feature_id) ;
		nCC:long_name = "Compound Channel Manning\'s n" ;
		nCC:coordinates = "lat lon" ;
	float TopWdthCC(feature_id) ;
		TopWdthCC:long_name = "Compound Channel Top Width (m)" ;
		TopWdthCC:units = "m" ;
		TopWdthCC:coordinates = "lat lon" ;
	float TopWdth(feature_id) ;
		TopWdth:long_name = "Top Width (m)" ;
		TopWdth:units = "m" ;
		TopWdth:coordinates = "lat lon" ;

// global attributes:
		:Convention = "CF-1.6" ;
		:featureType = "timeSeries" ;
		:history = "Created Tue Feb 27 14:45:27 2018" ;
		:processing_notes = "This file was produced Tue Feb 27 14:24:11 2018 by Kevin Sampson (NCAR) and has the following attributes: \n",
			"   This file uses the NHDPlus v21 \"flattened\" geodatabase: NHDPlusV21_National_Flattened.gdb.\n",
			"   This file excludes reaches in Puerto Rico and Hawaii.\n",
			"   Routing using Arc-Hydro derived segments for Regions 01a, 02b, 09a, 10i, 10h, 13a, 13b, 13d, 15a, 15b, 17b, 18a.\n",
			"   Topology fixes using: Topology_Fixer.csv.\n",
			"   NHDFlowlines removed using: Remove_COMIDs_NHDFLowline_Network.csv.\n",
			"   Gage preference list: numberOf100QualityObs.2017-03-15.csv.\n",
			"   Gage subset list: numberOf100QualityObs.2017-03-15.csv.\n",
			"   Gage additions made using: Add_Gage_Association.csv.\n",
			"   Gage-to-flowline association changes made using: Bad_Gage_Associations.csv.\n",
			"   Tidal-influenced gages removed using: TidalGageList_20170316.csv.\n",
			"   Waterbody associations using spatial join with Lake feature class Waterbodies_V2_1km_plus.shp." ;
}
