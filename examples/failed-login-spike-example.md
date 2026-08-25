# Example: Failed Login Spike

**Scenario:** Multiple failed login attempts detected against a single user account in a short time period.

### Triage Steps Performed
- Reviewed the number of failed attempts and time window
- Checked the source IP addresses involved
- Confirmed whether the account was locked
- Reviewed recent successful logins for the same user

### Findings
- 15+ failed attempts occurred within 10 minutes
- Source IPs were from different geographic locations
- Account was automatically locked by policy
- No successful login occurred during the spike

### Decision
Treated as a potential brute-force attempt. Escalated for further investigation and monitoring of the account.

### Documentation Notes
Included the time range, number of attempts, source IPs, and current account status (locked).
