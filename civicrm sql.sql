


SELECT civicrm_contact.display_name, civicrm_contact.organization_name, COUNT( civicrm_case_contact.contact_id ) 
FROM civicrm_contact
JOIN civicrm_case_contact ON civicrm_case_contact.contact_id = civicrm_contact.id
JOIN civicrm_case ON civicrm_case.ID = civicrm_case_contact.id
WHERE civicrm_case.status_id =1
GROUP BY civicrm_contact.display_name, civicrm_contact.organization_name