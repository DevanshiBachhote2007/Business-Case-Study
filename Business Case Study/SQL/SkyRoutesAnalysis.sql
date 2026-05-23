-- Top 10 Most Frequent Routes (by number of flights)
SELECT RouteCode, Origin, Destination, COUNT(*) AS FlightCount
FROM airlineroutesdata
GROUP BY RouteCode, Origin, Destination
ORDER BY FlightCount DESC
LIMIT 10;

-- Average Revenue, Cost, and Profit per Route
SELECT RouteCode, Origin, Destination,
       AVG(Revenue) AS AvgRevenue,
       AVG(OperationalCost) AS AvgCost,
       AVG(Profit) AS AvgProfit
FROM airlineroutesdata
GROUP BY RouteCode, Origin, Destination;

-- Underperforming Routes (negative average profit)
SELECT RouteCode, Origin, Destination,
       AVG(Profit) AS AvgProfit
FROM airlineroutesdata
GROUP BY RouteCode, Origin, Destination
HAVING AVG(Profit) < 0;  -- no negative profit routes
                            -- no output for this query

-- Seat Occupancy % per Route
SELECT RouteCode, Origin, Destination,
       AVG((SeatsSold * 100.0) / SeatsAvailable) AS AvgOccupancyRate
FROM airlineroutesdata
GROUP BY RouteCode, Origin, Destination;

-- Monthly Trend of Profit per Route
SELECT RouteCode, Origin, Destination,
       YEAR(FlightDate) AS Year,
       MONTH(FlightDate) AS Month,
       SUM(Profit) AS MonthlyProfit
FROM airlineroutesdata
GROUP BY RouteCode, Origin, Destination, YEAR(FlightDate), MONTH(FlightDate)
ORDER BY Year, Month;

-- Compare Profitability: Domestic vs International
SELECT RouteType,
       AVG(Profit) AS AvgProfit,
       SUM(Profit) AS TotalProfit
FROM airlineroutesdata
GROUP BY RouteType;

-- Rank Routes by Revenue per Minute
SELECT RouteCode, Origin, Destination,
       AVG(Revenue / FlightDurationMins) AS RevenuePerMinute
FROM airlineroutesdata
GROUP BY RouteCode, Origin, Destination
ORDER BY RevenuePerMinute DESC;
