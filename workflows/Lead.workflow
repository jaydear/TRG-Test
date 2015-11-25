<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>DealRegistrationAcknowledgement</fullName>
        <description>Deal Registration Acknowledgement</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>DealRegistrations/DealRegistrationAcknowledged</template>
    </alerts>
    <alerts>
        <fullName>DealRegistrationRejected</fullName>
        <description>Deal Registration Rejected</description>
        <protected>false</protected>
        <recipients>
            <type>creator</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>DealRegistrations/DealRegistrationRejected</template>
    </alerts>
    <alerts>
        <fullName>PartnerAcknowledgement</fullName>
        <description>Partner Acknowledgement</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>DealRegistrations/LeadChangedtoDealRegistration</template>
    </alerts>
    <fieldUpdates>
        <fullName>Assign_to_Data_com_Record_Type</fullName>
        <description>Assigns this lead to the Data.com Record Type</description>
        <field>RecordTypeId</field>
        <lookupValue>Data_com</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Assign to Data.com Record Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ChangeLeadSource</fullName>
        <field>LeadSource</field>
        <literalValue>Deal Registration</literalValue>
        <name>Change Lead Source</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ChangeLeadStatustoDraft</fullName>
        <field>Status</field>
        <literalValue>Draft</literalValue>
        <name>Change Lead Status to Draft</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ChangeRecordTypetoDealRegistration</fullName>
        <field>RecordTypeId</field>
        <lookupValue>DealRegistration</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Change Record Type to Deal Registration</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateApprovalStatustoApproved</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Update Approval Status to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateApprovalStatustoRejected</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Update Approval Status to Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateApprovalStatustoSubmitted</fullName>
        <field>Approval_Status__c</field>
        <literalValue>Submitted</literalValue>
        <name>Update Approval Status to Submitted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateDealApprovedDate</fullName>
        <field>Deal_Approved_Date__c</field>
        <formula>NOW()</formula>
        <name>Update Deal Approved Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateDealExpirationDate</fullName>
        <field>Registration_Expiration__c</field>
        <formula>NOW() + 60</formula>
        <name>Update Deal Expiration Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateLeadStatustoApproved</fullName>
        <field>Status</field>
        <literalValue>Approved (Converted)</literalValue>
        <name>Update Lead Status to Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateLeadStatustoRejected</fullName>
        <field>Status</field>
        <literalValue>Rejected</literalValue>
        <name>Update Lead Status to Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateLeadStatustoSubmitted</fullName>
        <field>Status</field>
        <literalValue>Submitted</literalValue>
        <name>Update Lead Status to Submitted</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Lead_Source_to_Data_com</fullName>
        <field>LeadSource</field>
        <literalValue>Data.com</literalValue>
        <name>Update Lead Source to Data.com</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Assign to Data%2Ecom RecordType</fullName>
        <actions>
            <name>Assign_to_Data_com_Record_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Data_com_Lead__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Lead Workflow - Follow-Up Assigned to Owner on Create</fullName>
        <actions>
            <name>NewLeadAssignedtoyouFollowupwithin24Hours</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.CreatedDate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Workflow demonstrates how a task can be assigned to a Sales Rep so Sales execs can hold SRs accountable for following up with their leads.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Campaign</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Lead.City</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Lead Source to Data%2Ecom</fullName>
        <actions>
            <name>Update_Lead_Source_to_Data_com</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.LeadSource</field>
            <operation>equals</operation>
            <value>Jigsaw</value>
        </criteriaItems>
        <description>If a new Lead is created with the Lead Source = Jigsaw then update the Lead Source = Data.com.  This WF rule is used for Leads created through Data.com Prospector.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>NewLeadAssignedtoyouFollowupwithin24Hours</fullName>
        <assignedToType>owner</assignedToType>
        <description>A new lead has been assigned to you in Salesforce. Please follow up within 24 hours or your manager will be notified.

Thanks,
Sales Operations</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>New Lead Assigned to you. Follow up within 24 Hours</subject>
    </tasks>
</Workflow>
