# Example: Suspicious Phishing Email

**Scenario:** User reports a suspicious email that appears to come from IT support asking them to click a link and enter credentials.

### Triage Steps Performed
- Reviewed the email headers and sender address
- Checked the embedded link against known phishing indicators
- Confirmed whether the sending domain was legitimate
- Asked the user if they clicked the link or entered any information

### Findings
- Sender address was a close lookalike of a legitimate company domain
- Link redirected to an external site not owned by the organization
- User did not click the link or submit credentials
- No related alerts on the user’s account at time of review

### Decision
Documented as a phishing attempt. Escalated for further analysis of the malicious domain and user awareness follow-up.

### Documentation Notes
Included original email headers, the suspicious URL, and confirmation that no credentials were entered.
