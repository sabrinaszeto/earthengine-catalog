local id = 'MODIS';
local ee_const = import 'earthengine_const.libsonnet';
local ee = import 'earthengine.libsonnet';

local basename = 'catalog';
local base_filename = basename + '.json';
local base_url = ee_const.catalog_base + 'MODIS/';
local parent_url = ee_const.catalog_base + 'catalog.json';
local self_url = base_url + base_filename;

{
  stac_version: ee_const.stac_version,
  type: ee_const.stac_type.catalog,
  id: id,
  title: id,
  description: importstr 'description.md',
  links: [
    ee.link.root(),
    ee.link.parent(parent_url),
    ee.link.self_link(self_url),
    ee.link.child_collection('MODIS_006_MCD12Q1', base_url),
    ee.link.child_collection('MODIS_006_MCD12Q2', base_url),
    ee.link.child_collection('MODIS_006_MCD15A3H', base_url),
    ee.link.child_collection('MODIS_006_MCD19A2_GRANULES', base_url),
    ee.link.child_collection('MODIS_006_MCD43A1', base_url),
    ee.link.child_collection('MODIS_006_MCD43A2', base_url),
    ee.link.child_collection('MODIS_006_MCD43A3', base_url),
    ee.link.child_collection('MODIS_006_MCD43A4', base_url),
    ee.link.child_collection('MODIS_006_MCD43C3', base_url),
    ee.link.child_collection('MODIS_006_MCD64A1', base_url),
    ee.link.child_collection('MODIS_006_MOD08_M3', base_url),
    ee.link.child_collection('MODIS_006_MOD09A1', base_url),
    ee.link.child_collection('MODIS_006_MOD09GA', base_url),
    ee.link.child_collection('MODIS_006_MOD09GQ', base_url),
    ee.link.child_collection('MODIS_006_MOD09Q1', base_url),
    ee.link.child_collection('MODIS_006_MOD10A1', base_url),
    ee.link.child_collection('MODIS_006_MOD11A1', base_url),
    ee.link.child_collection('MODIS_006_MOD11A2', base_url),
    ee.link.child_collection('MODIS_006_MOD13A1', base_url),
    ee.link.child_collection('MODIS_006_MOD13A2', base_url),
    ee.link.child_collection('MODIS_006_MOD13Q1', base_url),
    ee.link.child_collection('MODIS_006_MOD14A1', base_url),
    ee.link.child_collection('MODIS_006_MOD14A2', base_url),
    ee.link.child_collection('MODIS_006_MOD15A2H', base_url),
    ee.link.child_collection('MODIS_006_MOD16A2', base_url),
    ee.link.child_collection('MODIS_006_MOD17A2H', base_url),
    ee.link.child_collection('MODIS_006_MOD17A3H', base_url),
    ee.link.child_collection('MODIS_006_MOD17A3HGF', base_url),
    ee.link.child_collection('MODIS_006_MOD44B', base_url),
    ee.link.child_collection('MODIS_006_MOD44W', base_url),
    ee.link.child_collection('MODIS_006_MODOCGA', base_url),
    ee.link.child_collection('MODIS_006_MYD08_M3', base_url),
    ee.link.child_collection('MODIS_006_MYD09A1', base_url),
    ee.link.child_collection('MODIS_006_MYD09GA', base_url),
    ee.link.child_collection('MODIS_006_MYD09GQ', base_url),
    ee.link.child_collection('MODIS_006_MYD09Q1', base_url),
    ee.link.child_collection('MODIS_006_MYD10A1', base_url),
    ee.link.child_collection('MODIS_006_MYD11A1', base_url),
    ee.link.child_collection('MODIS_006_MYD11A2', base_url),
    ee.link.child_collection('MODIS_006_MYD13A1', base_url),
    ee.link.child_collection('MODIS_006_MYD13A2', base_url),
    ee.link.child_collection('MODIS_006_MYD13Q1', base_url),
    ee.link.child_collection('MODIS_006_MYD14A1', base_url),
    ee.link.child_collection('MODIS_006_MYD14A2', base_url),
    ee.link.child_collection('MODIS_006_MYD15A2H', base_url),
    ee.link.child_collection('MODIS_006_MYD17A2H', base_url),
    ee.link.child_collection('MODIS_006_MYD17A3H', base_url),
    ee.link.child_collection('MODIS_006_MYD17A3HGF', base_url),
    ee.link.child_collection('MODIS_006_MYDOCGA', base_url),
    ee.link.child_collection('MODIS_055_MOD17A3', base_url),
    ee.link.child_collection('MODIS_061_MCD12Q1', base_url),
    ee.link.child_collection('MODIS_061_MCD12Q2', base_url),
    ee.link.child_collection('MODIS_061_MCD15A3H', base_url),
    ee.link.child_collection('MODIS_061_MCD18C2', base_url),
    ee.link.child_collection('MODIS_061_MCD19A2_GRANULES', base_url),
    ee.link.child_collection('MODIS_061_MCD43A1', base_url),
    ee.link.child_collection('MODIS_061_MCD43A2', base_url),
    ee.link.child_collection('MODIS_061_MCD43A3', base_url),
    ee.link.child_collection('MODIS_061_MCD43A4', base_url),
    ee.link.child_collection('MODIS_061_MCD43C3', base_url),
    ee.link.child_collection('MODIS_061_MCD64A1', base_url),
    ee.link.child_collection('MODIS_061_MOD08_M3', base_url),
    ee.link.child_collection('MODIS_061_MOD09A1', base_url),
    ee.link.child_collection('MODIS_061_MOD09CMG', base_url),
    ee.link.child_collection('MODIS_061_MOD09GA', base_url),
    ee.link.child_collection('MODIS_061_MOD09GQ', base_url),
    ee.link.child_collection('MODIS_061_MOD09Q1', base_url),
    ee.link.child_collection('MODIS_061_MOD10A1', base_url),
    ee.link.child_collection('MODIS_061_MOD11A1', base_url),
    ee.link.child_collection('MODIS_061_MOD11A2', base_url),
    ee.link.child_collection('MODIS_061_MOD13A1', base_url),
    ee.link.child_collection('MODIS_061_MOD13A2', base_url),
    ee.link.child_collection('MODIS_061_MOD13Q1', base_url),
    ee.link.child_collection('MODIS_061_MOD14A1', base_url),
    ee.link.child_collection('MODIS_061_MOD14A2', base_url),
    ee.link.child_collection('MODIS_061_MOD15A2H', base_url),
    ee.link.child_collection('MODIS_061_MOD16A2', base_url),
    ee.link.child_collection('MODIS_061_MOD17A2H', base_url),
    ee.link.child_collection('MODIS_061_MOD17A3HGF', base_url),
    ee.link.child_collection('MODIS_061_MOD21A1D', base_url),
    ee.link.child_collection('MODIS_061_MOD21A1N', base_url),
    ee.link.child_collection('MODIS_061_MOD21C1', base_url),
    ee.link.child_collection('MODIS_061_MOD21C2', base_url),
    ee.link.child_collection('MODIS_061_MOD21C3', base_url),
    ee.link.child_collection('MODIS_061_MYD08_M3', base_url),
    ee.link.child_collection('MODIS_061_MYD09A1', base_url),
    ee.link.child_collection('MODIS_061_MYD09GA', base_url),
    ee.link.child_collection('MODIS_061_MYD09GQ', base_url),
    ee.link.child_collection('MODIS_061_MYD09Q1', base_url),
    ee.link.child_collection('MODIS_061_MYD10A1', base_url),
    ee.link.child_collection('MODIS_061_MYD11A1', base_url),
    ee.link.child_collection('MODIS_061_MYD11A2', base_url),
    ee.link.child_collection('MODIS_061_MYD13A1', base_url),
    ee.link.child_collection('MODIS_061_MYD13A2', base_url),
    ee.link.child_collection('MODIS_061_MYD13Q1', base_url),
    ee.link.child_collection('MODIS_061_MYD14A1', base_url),
    ee.link.child_collection('MODIS_061_MYD14A2', base_url),
    ee.link.child_collection('MODIS_061_MYD15A2H', base_url),
    ee.link.child_collection('MODIS_061_MYD17A2H', base_url),
    ee.link.child_collection('MODIS_061_MYD17A3HGF', base_url),
    ee.link.child_collection('MODIS_061_MYD21A1D', base_url),
    ee.link.child_collection('MODIS_061_MYD21A1N', base_url),
    ee.link.child_collection('MODIS_061_MYD21C1', base_url),
    ee.link.child_collection('MODIS_061_MYD21C2', base_url),
    ee.link.child_collection('MODIS_061_MYD21C3', base_url),
    ee.link.child_collection('MODIS_MCD43A1', base_url),
    ee.link.child_collection('MODIS_MCD43A2', base_url),
    ee.link.child_collection('MODIS_MCD43A4', base_url),
    ee.link.child_collection('MODIS_MCD43A4_006_BAI', base_url),
    ee.link.child_collection('MODIS_MCD43A4_006_EVI', base_url),
    ee.link.child_collection('MODIS_MCD43A4_006_NDSI', base_url),
    ee.link.child_collection('MODIS_MCD43A4_006_NDVI', base_url),
    ee.link.child_collection('MODIS_MCD43A4_006_NDWI', base_url),
    ee.link.child_collection('MODIS_MCD43A4_BAI', base_url),
    ee.link.child_collection('MODIS_MCD43A4_EVI', base_url),
    ee.link.child_collection('MODIS_MCD43A4_NDSI', base_url),
    ee.link.child_collection('MODIS_MCD43A4_NDVI', base_url),
    ee.link.child_collection('MODIS_MCD43A4_NDWI', base_url),
    ee.link.child_collection('MODIS_MOD09A1', base_url),
    ee.link.child_collection('MODIS_MOD09GA', base_url),
    ee.link.child_collection('MODIS_MOD09GA_006_BAI', base_url),
    ee.link.child_collection('MODIS_MOD09GA_006_EVI', base_url),
    ee.link.child_collection('MODIS_MOD09GA_006_NDSI', base_url),
    ee.link.child_collection('MODIS_MOD09GA_006_NDVI', base_url),
    ee.link.child_collection('MODIS_MOD09GA_006_NDWI', base_url),
    ee.link.child_collection('MODIS_MOD09GA_BAI', base_url),
    ee.link.child_collection('MODIS_MOD09GA_EVI', base_url),
    ee.link.child_collection('MODIS_MOD09GA_NDSI', base_url),
    ee.link.child_collection('MODIS_MOD09GA_NDVI', base_url),
    ee.link.child_collection('MODIS_MOD09GA_NDWI', base_url),
    ee.link.child_collection('MODIS_MOD09GQ', base_url),
    ee.link.child_collection('MODIS_MOD09Q1', base_url),
    ee.link.child_collection('MODIS_MOD10A1', base_url),
    ee.link.child_collection('MODIS_MOD11A1', base_url),
    ee.link.child_collection('MODIS_MOD11A2', base_url),
    ee.link.child_collection('MODIS_MOD13A1', base_url),
    ee.link.child_collection('MODIS_MOD13Q1', base_url),
    ee.link.child_collection('MODIS_MOD44W_MOD44W_005_2000_02_24', base_url),
    ee.link.child_collection('MODIS_MYD09A1', base_url),
    ee.link.child_collection('MODIS_MYD09GA', base_url),
    ee.link.child_collection('MODIS_MYD09GA_006_BAI', base_url),
    ee.link.child_collection('MODIS_MYD09GA_006_EVI', base_url),
    ee.link.child_collection('MODIS_MYD09GA_006_NDSI', base_url),
    ee.link.child_collection('MODIS_MYD09GA_006_NDVI', base_url),
    ee.link.child_collection('MODIS_MYD09GA_006_NDWI', base_url),
    ee.link.child_collection('MODIS_MYD09GA_BAI', base_url),
    ee.link.child_collection('MODIS_MYD09GA_EVI', base_url),
    ee.link.child_collection('MODIS_MYD09GA_NDSI', base_url),
    ee.link.child_collection('MODIS_MYD09GA_NDVI', base_url),
    ee.link.child_collection('MODIS_MYD09GA_NDWI', base_url),
    ee.link.child_collection('MODIS_MYD09GQ', base_url),
    ee.link.child_collection('MODIS_MYD09Q1', base_url),
    ee.link.child_collection('MODIS_MYD10A1', base_url),
    ee.link.child_collection('MODIS_MYD11A1', base_url),
    ee.link.child_collection('MODIS_MYD11A2', base_url),
    ee.link.child_collection('MODIS_MYD13A1', base_url),
    ee.link.child_collection('MODIS_MYD13Q1', base_url),
    ee.link.child_collection('MODIS_NTSG_MOD16A2_105', base_url),
  ],
}
