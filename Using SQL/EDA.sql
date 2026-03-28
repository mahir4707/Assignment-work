CREATE TABLE energy_data (
    "Date" DATE,

    "Coal_RB_4800_FOB_London_Close_USD" DOUBLE PRECISION,
    "Coal_RB_5500_FOB_London_Close_USD" DOUBLE PRECISION,
    "Coal_RB_5700_FOB_London_Close_USD" DOUBLE PRECISION,
    "Coal_RB_6000_FOB_CurrentWeek_Avg_USD" DOUBLE PRECISION,
    "Coal_India_5500_CFR_London_Close_USD" DOUBLE PRECISION,

    "Price_WTI" DOUBLE PRECISION,
    "Price_Brent_Oil" DOUBLE PRECISION,
    "Price_Dubai_Brent_Oil" DOUBLE PRECISION,
    "Price_ExxonMobil" DOUBLE PRECISION,
    "Price_Shenhua" DOUBLE PRECISION,
    "Price_All_Share" DOUBLE PRECISION,
    "Price_Mining" DOUBLE PRECISION,
    "Price_LNG_Japan_Korea_Marker_PLATTS" DOUBLE PRECISION,
    "Price_ZAR_USD" DOUBLE PRECISION,
    "Price_Natural_Gas" DOUBLE PRECISION,
    "Price_ICE" DOUBLE PRECISION,
    "Price_Dutch_TTF" DOUBLE PRECISION,
    "Price_Indian_en_exg_rate" DOUBLE PRECISION
);

select * from energy_data

--Measure of central tendency
--Mean
SELECT
    AVG("Coal_India_5500_CFR_London_Close_USD") AS mean_coal_india,
    AVG("Coal_RB_4800_FOB_London_Close_USD") AS mean_rb4800,
    AVG("Coal_RB_5500_FOB_London_Close_USD") AS mean_rb5500,
    AVG("Coal_RB_5700_FOB_London_Close_USD") AS mean_rb5700,
    AVG("Coal_RB_6000_FOB_CurrentWeek_Avg_USD") AS mean_rb6000,

    AVG("Price_All_Share") AS mean_all_share,
    AVG("Price_Brent_Oil") AS mean_brent,
    AVG("Price_Dubai_Brent_Oil") AS mean_dubai,
    AVG("Price_Dutch_TTF") AS mean_ttf,
    AVG("Price_ExxonMobil") AS mean_exxon,
    AVG("Price_ICE") AS mean_ice,
    AVG("Price_Indian_en_exg_rate") AS mean_exchange,
    AVG("Price_LNG_Japan_Korea_Marker_PLATTS") AS mean_lng,
    AVG("Price_Mining") AS mean_mining,
    AVG("Price_Natural_Gas") AS mean_gas,
    AVG("Price_Shenhua") AS mean_shenhua,
    AVG("Price_WTI") AS mean_wti,
    AVG("Price_ZAR_USD") AS mean_zar

FROM energy_data;

--Median
SELECT
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Coal_India_5500_CFR_London_Close_USD") AS median_coal_india,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Coal_RB_4800_FOB_London_Close_USD") AS median_rb4800,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Coal_RB_5500_FOB_London_Close_USD") AS median_rb5500,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Coal_RB_5700_FOB_London_Close_USD") AS median_rb5700,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Coal_RB_6000_FOB_CurrentWeek_Avg_USD") AS median_rb6000,

    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Price_All_Share") AS median_all_share,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Price_Brent_Oil") AS median_brent,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Price_Dubai_Brent_Oil") AS median_dubai,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Price_Dutch_TTF") AS median_ttf,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Price_ExxonMobil") AS median_exxon,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Price_ICE") AS median_ice,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Price_Indian_en_exg_rate") AS median_exchange,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Price_LNG_Japan_Korea_Marker_PLATTS") AS median_lng,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Price_Mining") AS median_mining,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Price_Natural_Gas") AS median_gas,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Price_Shenhua") AS median_shenhua,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Price_WTI") AS median_wti,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY "Price_ZAR_USD") AS median_zar

FROM energy_data;

--Mode
SELECT
    MODE() WITHIN GROUP (ORDER BY "Coal_India_5500_CFR_London_Close_USD") AS mode_coal_india,
    MODE() WITHIN GROUP (ORDER BY "Coal_RB_4800_FOB_London_Close_USD") AS mode_rb4800,
    MODE() WITHIN GROUP (ORDER BY "Coal_RB_5500_FOB_London_Close_USD") AS mode_rb5500,
    MODE() WITHIN GROUP (ORDER BY "Coal_RB_5700_FOB_London_Close_USD") AS mode_rb5700,
    MODE() WITHIN GROUP (ORDER BY "Coal_RB_6000_FOB_CurrentWeek_Avg_USD") AS mode_rb6000,

    MODE() WITHIN GROUP (ORDER BY "Price_All_Share") AS mode_all_share,
    MODE() WITHIN GROUP (ORDER BY "Price_Brent_Oil") AS mode_brent,
    MODE() WITHIN GROUP (ORDER BY "Price_Dubai_Brent_Oil") AS mode_dubai,
    MODE() WITHIN GROUP (ORDER BY "Price_Dutch_TTF") AS mode_ttf,
    MODE() WITHIN GROUP (ORDER BY "Price_ExxonMobil") AS mode_exxon,
    MODE() WITHIN GROUP (ORDER BY "Price_ICE") AS mode_ice,
    MODE() WITHIN GROUP (ORDER BY "Price_Indian_en_exg_rate") AS mode_exchange,
    MODE() WITHIN GROUP (ORDER BY "Price_LNG_Japan_Korea_Marker_PLATTS") AS mode_lng,
    MODE() WITHIN GROUP (ORDER BY "Price_Mining") AS mode_mining,
    MODE() WITHIN GROUP (ORDER BY "Price_Natural_Gas") AS mode_gas,
    MODE() WITHIN GROUP (ORDER BY "Price_Shenhua") AS mode_shenhua,
    MODE() WITHIN GROUP (ORDER BY "Price_WTI") AS mode_wti,
    MODE() WITHIN GROUP (ORDER BY "Price_ZAR_USD") AS mode_zar

FROM energy_data;

--Measure of Dispersion
--Finding Variance for the each column

SELECT
    -- Variance
    VAR_POP("Coal_India_5500_CFR_London_Close_USD") AS var_coal_india,
    VAR_POP("Coal_RB_4800_FOB_London_Close_USD") AS var_rb4800,
    VAR_POP("Coal_RB_5500_FOB_London_Close_USD") AS var_rb5500,
    VAR_POP("Coal_RB_5700_FOB_London_Close_USD") AS var_rb5700,
    VAR_POP("Coal_RB_6000_FOB_CurrentWeek_Avg_USD") AS var_rb6000,

    VAR_POP("Price_All_Share") AS var_all_share,
    VAR_POP("Price_Brent_Oil") AS var_brent,
    VAR_POP("Price_Dubai_Brent_Oil") AS var_dubai,
    VAR_POP("Price_Dutch_TTF") AS var_ttf,
    VAR_POP("Price_ExxonMobil") AS var_exxon,
    VAR_POP("Price_ICE") AS var_ice,
    VAR_POP("Price_Indian_en_exg_rate") AS var_exchange,
    VAR_POP("Price_LNG_Japan_Korea_Marker_PLATTS") AS var_lng,
    VAR_POP("Price_Mining") AS var_mining,
    VAR_POP("Price_Natural_Gas") AS var_gas,
    VAR_POP("Price_Shenhua") AS var_shenhua,
    VAR_POP("Price_WTI") AS var_wti,
    VAR_POP("Price_ZAR_USD") AS var_zar

FROM energy_data;

SELECT
    -- Standard deviation
    STDDEV_POP("Coal_India_5500_CFR_London_Close_USD") AS std_coal_india,
    STDDEV_POP("Coal_RB_4800_FOB_London_Close_USD") AS std_rb4800,
    STDDEV_POP("Coal_RB_5500_FOB_London_Close_USD") AS std_rb5500,
    STDDEV_POP("Coal_RB_5700_FOB_London_Close_USD") AS std_rb5700,
    STDDEV_POP("Coal_RB_6000_FOB_CurrentWeek_Avg_USD") AS std_rb6000,

    STDDEV_POP("Price_All_Share") AS std_all_share,
    STDDEV_POP("Price_Brent_Oil") AS std_brent,
    STDDEV_POP("Price_Dubai_Brent_Oil") AS std_dubai,
    STDDEV_POP("Price_Dutch_TTF") AS std_ttf,
    STDDEV_POP("Price_ExxonMobil") AS std_exxon,
    STDDEV_POP("Price_ICE") AS std_ice,
    STDDEV_POP("Price_Indian_en_exg_rate") AS std_exchange,
    STDDEV_POP("Price_LNG_Japan_Korea_Marker_PLATTS") AS std_lng,
    STDDEV_POP("Price_Mining") AS std_mining,
    STDDEV_POP("Price_Natural_Gas") AS std_gas,
    STDDEV_POP("Price_Shenhua") AS std_shenhua,
    STDDEV_POP("Price_WTI") AS std_wti,
    STDDEV_POP("Price_ZAR_USD") AS std_zar

FROM energy_data;

SELECT
    -- Range
    MAX("Coal_India_5500_CFR_London_Close_USD") - MIN("Coal_India_5500_CFR_London_Close_USD") AS range_coal_india,
    MAX("Coal_RB_4800_FOB_London_Close_USD") - MIN("Coal_RB_4800_FOB_London_Close_USD") AS range_rb4800,
    MAX("Coal_RB_5500_FOB_London_Close_USD") - MIN("Coal_RB_5500_FOB_London_Close_USD") AS range_rb5500,
    MAX("Coal_RB_5700_FOB_London_Close_USD") - MIN("Coal_RB_5700_FOB_London_Close_USD") AS range_rb5700,
    MAX("Coal_RB_6000_FOB_CurrentWeek_Avg_USD") - MIN("Coal_RB_6000_FOB_CurrentWeek_Avg_USD") AS range_rb6000,

    MAX("Price_All_Share") - MIN("Price_All_Share") AS range_all_share,
    MAX("Price_Brent_Oil") - MIN("Price_Brent_Oil") AS range_brent,
    MAX("Price_Dubai_Brent_Oil") - MIN("Price_Dubai_Brent_Oil") AS range_dubai,
    MAX("Price_Dutch_TTF") - MIN("Price_Dutch_TTF") AS range_ttf,
    MAX("Price_ExxonMobil") - MIN("Price_ExxonMobil") AS range_exxon,
    MAX("Price_ICE") - MIN("Price_ICE") AS range_ice,
    MAX("Price_Indian_en_exg_rate") - MIN("Price_Indian_en_exg_rate") AS range_exchange,
    MAX("Price_LNG_Japan_Korea_Marker_PLATTS") - MIN("Price_LNG_Japan_Korea_Marker_PLATTS") AS range_lng,
    MAX("Price_Mining") - MIN("Price_Mining") AS range_mining,
    MAX("Price_Natural_Gas") - MIN("Price_Natural_Gas") AS range_gas,
    MAX("Price_Shenhua") - MIN("Price_Shenhua") AS range_shenhua,
    MAX("Price_WTI") - MIN("Price_WTI") AS range_wti,
    MAX("Price_ZAR_USD") - MIN("Price_ZAR_USD") AS range_zar

FROM energy_data;

-- Skewness
WITH stats AS (
    SELECT
        AVG("Coal_India_5500_CFR_London_Close_USD") AS mean_coal_india, 
        STDDEV_POP("Coal_India_5500_CFR_London_Close_USD") AS std_coal_india,

        AVG("Coal_RB_4800_FOB_London_Close_USD") AS mean_rb4800, 
        STDDEV_POP("Coal_RB_4800_FOB_London_Close_USD") AS std_rb4800,

        AVG("Coal_RB_5500_FOB_London_Close_USD") AS mean_rb5500, 
        STDDEV_POP("Coal_RB_5500_FOB_London_Close_USD") AS std_rb5500,

        AVG("Coal_RB_5700_FOB_London_Close_USD") AS mean_rb5700, 
        STDDEV_POP("Coal_RB_5700_FOB_London_Close_USD") AS std_rb5700,

        AVG("Coal_RB_6000_FOB_CurrentWeek_Avg_USD") AS mean_rb6000, 
        STDDEV_POP("Coal_RB_6000_FOB_CurrentWeek_Avg_USD") AS std_rb6000,

        AVG("Price_All_Share") AS mean_all_share, 
        STDDEV_POP("Price_All_Share") AS std_all_share,

        AVG("Price_Brent_Oil") AS mean_brent, 
        STDDEV_POP("Price_Brent_Oil") AS std_brent,

        AVG("Price_Dubai_Brent_Oil") AS mean_dubai, 
        STDDEV_POP("Price_Dubai_Brent_Oil") AS std_dubai,

        AVG("Price_Dutch_TTF") AS mean_ttf, 
        STDDEV_POP("Price_Dutch_TTF") AS std_ttf,

        AVG("Price_ExxonMobil") AS mean_exxon, 
        STDDEV_POP("Price_ExxonMobil") AS std_exxon,

        AVG("Price_ICE") AS mean_ice, 
        STDDEV_POP("Price_ICE") AS std_ice,

        AVG("Price_Indian_en_exg_rate") AS mean_exchange, 
        STDDEV_POP("Price_Indian_en_exg_rate") AS std_exchange,

        AVG("Price_LNG_Japan_Korea_Marker_PLATTS") AS mean_lng, 
        STDDEV_POP("Price_LNG_Japan_Korea_Marker_PLATTS") AS std_lng,

        AVG("Price_Mining") AS mean_mining, 
        STDDEV_POP("Price_Mining") AS std_mining,

        AVG("Price_Natural_Gas") AS mean_gas, 
        STDDEV_POP("Price_Natural_Gas") AS std_gas,

        AVG("Price_Shenhua") AS mean_shenhua, 
        STDDEV_POP("Price_Shenhua") AS std_shenhua,

        AVG("Price_WTI") AS mean_wti, 
        STDDEV_POP("Price_WTI") AS std_wti,

        AVG("Price_ZAR_USD") AS mean_zar, 
        STDDEV_POP("Price_ZAR_USD") AS std_zar
    FROM energy_data
),

calc AS (
    SELECT
        POWER("Coal_India_5500_CFR_London_Close_USD" - stats.mean_coal_india, 3) AS c1, stats.std_coal_india,
        POWER("Coal_RB_4800_FOB_London_Close_USD" - stats.mean_rb4800, 3) AS c2, stats.std_rb4800,
        POWER("Coal_RB_5500_FOB_London_Close_USD" - stats.mean_rb5500, 3) AS c3, stats.std_rb5500,
        POWER("Coal_RB_5700_FOB_London_Close_USD" - stats.mean_rb5700, 3) AS c4, stats.std_rb5700,
        POWER("Coal_RB_6000_FOB_CurrentWeek_Avg_USD" - stats.mean_rb6000, 3) AS c5, stats.std_rb6000,

        POWER("Price_All_Share" - stats.mean_all_share, 3) AS c6, stats.std_all_share,
        POWER("Price_Brent_Oil" - stats.mean_brent, 3) AS c7, stats.std_brent,
        POWER("Price_Dubai_Brent_Oil" - stats.mean_dubai, 3) AS c8, stats.std_dubai,
        POWER("Price_Dutch_TTF" - stats.mean_ttf, 3) AS c9, stats.std_ttf,
        POWER("Price_ExxonMobil" - stats.mean_exxon, 3) AS c10, stats.std_exxon,
        POWER("Price_ICE" - stats.mean_ice, 3) AS c11, stats.std_ice,
        POWER("Price_Indian_en_exg_rate" - stats.mean_exchange, 3) AS c12, stats.std_exchange,
        POWER("Price_LNG_Japan_Korea_Marker_PLATTS" - stats.mean_lng, 3) AS c13, stats.std_lng,
        POWER("Price_Mining" - stats.mean_mining, 3) AS c14, stats.std_mining,
        POWER("Price_Natural_Gas" - stats.mean_gas, 3) AS c15, stats.std_gas,
        POWER("Price_Shenhua" - stats.mean_shenhua, 3) AS c16, stats.std_shenhua,
        POWER("Price_WTI" - stats.mean_wti, 3) AS c17, stats.std_wti,
        POWER("Price_ZAR_USD" - stats.mean_zar, 3) AS c18, stats.std_zar

    FROM energy_data
    CROSS JOIN stats
)

SELECT
    AVG(c1)/POWER(MAX(std_coal_india),3) AS skew_coal_india,
    AVG(c2)/POWER(MAX(std_rb4800),3) AS skew_rb4800,
    AVG(c3)/POWER(MAX(std_rb5500),3) AS skew_rb5500,
    AVG(c4)/POWER(MAX(std_rb5700),3) AS skew_rb5700,
    AVG(c5)/POWER(MAX(std_rb6000),3) AS skew_rb6000,

    AVG(c6)/POWER(MAX(std_all_share),3) AS skew_all_share,
    AVG(c7)/POWER(MAX(std_brent),3) AS skew_brent,
    AVG(c8)/POWER(MAX(std_dubai),3) AS skew_dubai,
    AVG(c9)/POWER(MAX(std_ttf),3) AS skew_ttf,
    AVG(c10)/POWER(MAX(std_exxon),3) AS skew_exxon,
    AVG(c11)/POWER(MAX(std_ice),3) AS skew_ice,
    AVG(c12)/POWER(MAX(std_exchange),3) AS skew_exchange,
    AVG(c13)/POWER(MAX(std_lng),3) AS skew_lng,
    AVG(c14)/POWER(MAX(std_mining),3) AS skew_mining,
    AVG(c15)/POWER(MAX(std_gas),3) AS skew_gas,
    AVG(c16)/POWER(MAX(std_shenhua),3) AS skew_shenhua,
    AVG(c17)/POWER(MAX(std_wti),3) AS skew_wti,
    AVG(c18)/POWER(MAX(std_zar),3) AS skew_zar

FROM calc;

--Kurtosis
WITH stats AS (
    SELECT
        AVG("Coal_India_5500_CFR_London_Close_USD") AS mean_coal_india, 
        STDDEV_POP("Coal_India_5500_CFR_London_Close_USD") AS std_coal_india,

        AVG("Coal_RB_4800_FOB_London_Close_USD") AS mean_rb4800, 
        STDDEV_POP("Coal_RB_4800_FOB_London_Close_USD") AS std_rb4800,

        AVG("Coal_RB_5500_FOB_London_Close_USD") AS mean_rb5500, 
        STDDEV_POP("Coal_RB_5500_FOB_London_Close_USD") AS std_rb5500,

        AVG("Coal_RB_5700_FOB_London_Close_USD") AS mean_rb5700, 
        STDDEV_POP("Coal_RB_5700_FOB_London_Close_USD") AS std_rb5700,

        AVG("Coal_RB_6000_FOB_CurrentWeek_Avg_USD") AS mean_rb6000, 
        STDDEV_POP("Coal_RB_6000_FOB_CurrentWeek_Avg_USD") AS std_rb6000,

        AVG("Price_All_Share") AS mean_all_share, 
        STDDEV_POP("Price_All_Share") AS std_all_share,

        AVG("Price_Brent_Oil") AS mean_brent, 
        STDDEV_POP("Price_Brent_Oil") AS std_brent,

        AVG("Price_Dubai_Brent_Oil") AS mean_dubai, 
        STDDEV_POP("Price_Dubai_Brent_Oil") AS std_dubai,

        AVG("Price_Dutch_TTF") AS mean_ttf, 
        STDDEV_POP("Price_Dutch_TTF") AS std_ttf,

        AVG("Price_ExxonMobil") AS mean_exxon, 
        STDDEV_POP("Price_ExxonMobil") AS std_exxon,

        AVG("Price_ICE") AS mean_ice, 
        STDDEV_POP("Price_ICE") AS std_ice,

        AVG("Price_Indian_en_exg_rate") AS mean_exchange, 
        STDDEV_POP("Price_Indian_en_exg_rate") AS std_exchange,

        AVG("Price_LNG_Japan_Korea_Marker_PLATTS") AS mean_lng, 
        STDDEV_POP("Price_LNG_Japan_Korea_Marker_PLATTS") AS std_lng,

        AVG("Price_Mining") AS mean_mining, 
        STDDEV_POP("Price_Mining") AS std_mining,

        AVG("Price_Natural_Gas") AS mean_gas, 
        STDDEV_POP("Price_Natural_Gas") AS std_gas,

        AVG("Price_Shenhua") AS mean_shenhua, 
        STDDEV_POP("Price_Shenhua") AS std_shenhua,

        AVG("Price_WTI") AS mean_wti, 
        STDDEV_POP("Price_WTI") AS std_wti,

        AVG("Price_ZAR_USD") AS mean_zar, 
        STDDEV_POP("Price_ZAR_USD") AS std_zar
    FROM energy_data
),

calc AS (
    SELECT
        POWER("Coal_India_5500_CFR_London_Close_USD" - stats.mean_coal_india, 4) AS c1, stats.std_coal_india,
        POWER("Coal_RB_4800_FOB_London_Close_USD" - stats.mean_rb4800, 4) AS c2, stats.std_rb4800,
        POWER("Coal_RB_5500_FOB_London_Close_USD" - stats.mean_rb5500, 4) AS c3, stats.std_rb5500,
        POWER("Coal_RB_5700_FOB_London_Close_USD" - stats.mean_rb5700, 4) AS c4, stats.std_rb5700,
        POWER("Coal_RB_6000_FOB_CurrentWeek_Avg_USD" - stats.mean_rb6000, 4) AS c5, stats.std_rb6000,

        POWER("Price_All_Share" - stats.mean_all_share, 4) AS c6, stats.std_all_share,
        POWER("Price_Brent_Oil" - stats.mean_brent, 4) AS c7, stats.std_brent,
        POWER("Price_Dubai_Brent_Oil" - stats.mean_dubai, 4) AS c8, stats.std_dubai,
        POWER("Price_Dutch_TTF" - stats.mean_ttf, 4) AS c9, stats.std_ttf,
        POWER("Price_ExxonMobil" - stats.mean_exxon, 4) AS c10, stats.std_exxon,
        POWER("Price_ICE" - stats.mean_ice, 4) AS c11, stats.std_ice,
        POWER("Price_Indian_en_exg_rate" - stats.mean_exchange, 4) AS c12, stats.std_exchange,
        POWER("Price_LNG_Japan_Korea_Marker_PLATTS" - stats.mean_lng, 4) AS c13, stats.std_lng,
        POWER("Price_Mining" - stats.mean_mining, 4) AS c14, stats.std_mining,
        POWER("Price_Natural_Gas" - stats.mean_gas, 4) AS c15, stats.std_gas,
        POWER("Price_Shenhua" - stats.mean_shenhua, 4) AS c16, stats.std_shenhua,
        POWER("Price_WTI" - stats.mean_wti, 4) AS c17, stats.std_wti,
        POWER("Price_ZAR_USD" - stats.mean_zar, 4) AS c18, stats.std_zar

    FROM energy_data
    CROSS JOIN stats
)

SELECT
    AVG(c1)/POWER(MAX(std_coal_india),4) - 3 AS kurt_coal_india,
    AVG(c2)/POWER(MAX(std_rb4800),4) - 3 AS kurt_rb4800,
    AVG(c3)/POWER(MAX(std_rb5500),4) - 3 AS kurt_rb5500,
    AVG(c4)/POWER(MAX(std_rb5700),4) - 3 AS kurt_rb5700,
    AVG(c5)/POWER(MAX(std_rb6000),4) - 3 AS kurt_rb6000,

    AVG(c6)/POWER(MAX(std_all_share),4) - 3 AS kurt_all_share,
    AVG(c7)/POWER(MAX(std_brent),4) - 3 AS kurt_brent,
    AVG(c8)/POWER(MAX(std_dubai),4) - 3 AS kurt_dubai,
    AVG(c9)/POWER(MAX(std_ttf),4) - 3 AS kurt_ttf,
    AVG(c10)/POWER(MAX(std_exxon),4) - 3 AS kurt_exxon,
    AVG(c11)/POWER(MAX(std_ice),4) - 3 AS kurt_ice,
    AVG(c12)/POWER(MAX(std_exchange),4) - 3 AS kurt_exchange,
    AVG(c13)/POWER(MAX(std_lng),4) - 3 AS kurt_lng,
    AVG(c14)/POWER(MAX(std_mining),4) - 3 AS kurt_mining,
    AVG(c15)/POWER(MAX(std_gas),4) - 3 AS kurt_gas,
    AVG(c16)/POWER(MAX(std_shenhua),4) - 3 AS kurt_shenhua,
    AVG(c17)/POWER(MAX(std_wti),4) - 3 AS kurt_wti,
    AVG(c18)/POWER(MAX(std_zar),4) - 3 AS kurt_zar

FROM calc;