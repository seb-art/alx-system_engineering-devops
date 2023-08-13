Vidly Web Application Outage - August 10, 2023
Issue Summary: Duration: August 10, 2023, 09:15 AM - August 10, 2023, 11:30 AM (UTC) Impact: The web application experienced a complete service outage, affecting all users. User interactions were disrupted, resulting in a 100% user impact.
Root Cause: The outage was caused by a misconfigured database connection pool that led to resource exhaustion. As user traffic increased, the database connections reached their maximum limit, causing the application to stop responding.
Timeline:
•	09:15 AM: Issue detected as monitoring alerts indicated a spike in server response times.
•	09:20 AM: Investigation initiated by the DevOps team to identify the cause of the slowdown.
•	09:30 AM: Initial assumption of high CPU usage due to increased user activity led to scaling up of application servers.
•	09:45 AM: Despite scaling, response times continued to degrade. Database servers were suspected to be the bottleneck.
•	10:00 AM: Focus shifted to database servers; DBAs began investigating query performance and server health.
•	10:30 AM: No significant improvement; network and storage layers examined for potential issues.
•	10:45 AM: Misleading suspicion of network latency resulted in unnecessary network reconfiguration.
•	11:00 AM: Escalated to senior engineering team for further assistance.
•	11:15 AM: Senior team identified the misconfigured database connection pool leading to exhaustion.
•	11:30 AM: Issue resolved by correcting the configuration and restarting the application servers.
Root Cause and Resolution: The misconfigured database connection pool settings allowed connections to remain open indefinitely, causing them to accumulate and exhaust the connection limit. This resulted in the application's inability to establish new connections, leading to the outage.
The issue was fixed by adjusting the database connection pool settings to ensure connections were properly closed after use. Once the configuration was updated, application servers were restarted, releasing the held connections and restoring normal operation.
Corrective and Preventative Measures:
1.	Configuration Review: Conduct a comprehensive review of all system configurations, especially database connection pools, to ensure optimal settings are in place.
2.	Monitoring Enhancements: Implement proactive monitoring for database connection usage and application performance metrics. Set up alerts for abnormal connection behavior.
3.	Load Testing: Regularly perform load testing to identify system bottlenecks and ensure proper resource allocation before scaling.
4.	Automated Scaling: Implement automatic scaling mechanisms to handle sudden increases in user traffic without manual intervention.
5.	Documentation Updates: Document the root cause and resolution of this outage to facilitate faster diagnosis and resolution in the future.
Tasks to Address the Issue:
1.	Patch application code to enforce proper closure of database connections.
2.	Update monitoring system to include database connection pool metrics.
3.	Review and optimize query performance to reduce database load.
4.	Implement automated scaling based on predefined thresholds.
5.	Schedule regular load tests to simulate traffic spikes and validate system capacity.


