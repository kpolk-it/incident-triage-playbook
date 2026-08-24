# Example: Suspicious Login Alert 

**Scenario:** Alert for successful login from an unusual location. 

### Triage steps performed 
- Reviewed login timestamp and source IP
- Checked user's typical login locations and times
- Confirmed whether VPN or expected travel was involved 
- Reviewed recent password reset or MFA activity 

### Findings 
- Login originated from an IP in a different country 
- No matching travel notificatioin 
- MFA challenge was successfully completed 
- User has no recent password changes 

### Decision 
Escalated for further investigation due to unusual location + successful authentication. 

### Documentation Notes
Used standard triage notes and included source IP, timestamp, and MFA status in the handoff. 
