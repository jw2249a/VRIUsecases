create xml schema collection VoterRecordsInterchange as 
N'<?xml version="1.0"?>
<!-- edited with XMLSpy v2018 sp1 (http://www.altova.com) by John Dziurlaj (NIST) -->
<xsd:schema xmlns="https://raw.githubusercontent.com/usnistgov/VoterRecordsInterchange/feature/6/NIST_V0_voter_records_interchange.xsd" xmlns:addr="http://www.fgdc.gov/schemas/address/addr" xmlns:ds="http://www.w3.org/2000/09/xmldsig#" xmlns:xsd="http://www.w3.org/2001/XMLSchema" targetNamespace="https://raw.githubusercontent.com/usnistgov/VoterRecordsInterchange/feature/6/NIST_V0_voter_records_interchange.xsd" elementFormDefault="qualified" version="0.0">
	<!-- ========== Imports ========== -->
	<xsd:import namespace="http://www.w3.org/2000/09/xmldsig#" schemaLocation="http://www.w3.org/2000/09/xmldsig#"/>
	<!-- ========== Roots ========== -->
	<xsd:element name="VoterRecordsRequest" type="VoterRecordsRequest"/>
	<xsd:element name="VoterRecordsResponse" type="VoterRecordsResponse"/>
	<!-- ========== Enumerations ========== -->
	<xsd:simpleType name="AssertionValue">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Enumeration for assertions from a voter or a third party such as a department of motor vehicles (DMV) in response to questions on a registration form, used in the &lt;a href="mdel://_18_0_2_6340208_1452702303368_675707_4326"&gt;Assertion&lt;/a&gt; attribute of &lt;a href="mdel://_18_0_2_6340208_1452701375494_353834_4295"&gt;VoterClassification&lt;/a&gt;.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="no">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For a voter�s or third party�s assertion of �no� or �false�.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="yes">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For a voter�s or third party�s assertion of �yes� or �true�.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="unknown">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For a voter�s or third party�s assertion of �unknown�.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="other">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For a voter�s or third party�s assertion of �other�.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>
	<xsd:simpleType name="BallotReceiptMethod">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Enumeration for methods for delivering a ballot to the voter, used in the &lt;a href="mdel://_18_0_2_6340208_1470255941618_803419_4330"&gt;BallotReceiptPreference&lt;/a&gt; attribute of       
        &lt;br&gt;&lt;a href="mdel://_18_0_2_6340208_1446583854986_159465_5958"&gt;oterRegistration&lt;/a&gt;. The sub-element may be repeated multiple times with different values as applicable, e.g., to specify both &lt;b&gt;mail&lt;/b&gt; and &lt;b&gt;online&lt;/b&gt;.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="email">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For email only.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="email-or-online">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For electronic mail or downloadable from a website (this value is ambiguous, thus the separate values for email and online).
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="fax">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For use of a fax.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="mail">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For postal mail.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="online">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For downloadable from a website, e.g., the voter is sent a hypertext link to a ballot.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>
	<xsd:simpleType name="ContactMethodType">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in requests AND responses.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        Enumeration for methods for contacting a voter or an election administration office, used in the &lt;a href="mdel://_18_0_2_6340208_1464893427968_428993_4498"&gt;Type&lt;/a&gt; attribute of &lt;a href="mdel://_18_0_2_6340208_1464893400979_739933_4444"&gt;ContactMethod&lt;/a&gt;.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="email">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For electronic mail.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="phone">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For use of a phone.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="other">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when the type of contact method is not included in this enumeration.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>
	<xsd:simpleType name="IdentifierType">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in request messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        Enumeration for election data-related codes in the &lt;a href="mdel://_18_0_2_6340208_1446584770723_729230_6705"&gt;ExternalIdentifiers&lt;/a&gt; class.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="fips">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For FIPS codes.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="local-level">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For a code that is specific to a county or other similar locality.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="national-level">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For a code that is used at the national level other than ocd-id.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="ocd-id">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For Open Civic Data identifiers.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="state-level">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For a code that is specific to a state.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="other">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when the type of code is not included in this enumeration.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>
	<xsd:simpleType name="PhoneCapability">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in request and response messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        Enumeration for telephone capabilities, used in the &lt;a href="mdel://_18_0_2_6340208_1465493985158_54379_4458"&gt;Capability&lt;/a&gt; attribute of &lt;a href="mdel://_18_0_2_6340208_1465493970792_917703_4430"&gt;PhoneContactMethod&lt;/a&gt;.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="fax">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For telephones that include facsimile capabilities.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="mms">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For telephones that contain Multimedia Messaging Service (MMS) capabilities.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="sms">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For telephones that contain Short Messaging Service (SMS) capabilities.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="voice">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For telephones that contain voice capabilities.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>
	<xsd:simpleType name="ReportingUnitType">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in request and response messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        Enumeration for the type of geopolitical unit, used in the &lt;a href="mdel://_18_0_2_6340208_1458229422044_801308_4545"&gt;Type&lt;/a&gt; sub-element in the &lt;a href="mdel://_18_0_2_6340208_1458229422042_966646_4539"&gt;ReportingUnit&lt;/a&gt; element.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="ballot-batch">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for reporting batches of ballots that may cross precinct boundaries.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="ballot-style-area">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for ballot style areas generally composed of precincts.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="borough">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used in CT, NJ, PA, other states, and New York City for boroughs. For AK and LA, see county.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="city">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for a city that reports results and/or for the district that encompasses it.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="city-council">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for city council districts.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="combined-precinct">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for one or more precincts that have been combined for the purposes of reporting.  Used for �Ward� if �Ward� is used interchangeably with �CombinedPrecinct�.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="congressional">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for U.S. Congressional districts.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="county">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for a county and/or for the district that encompasses it.  In AK, used for counties that are called boroughs.  In LA, used for parishes.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="county-council">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for county council districts.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="drop-box">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for a dropbox for absentee ballots.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="judicial">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for judicial districts.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="municipality">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used as applicable for various units such as towns, townships, villages that report votes and/or for the district that encompasses it.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="polling-place">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for a polling place.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="precinct">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used also for �Ward� or �District� when these terms are used interchangeably with �Precinct�.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="school">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for a school district.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="special">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for a special district.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="split-precinct">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for splits of precincts.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="state">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for a state and/or for the district that encompasses it.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="state-house">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for a state house or assembly district.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="state-senate">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for a state senate district.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="town">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used in some New England states as a type of municipality that reports votes and/or for the district that encompasses it.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="township">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used in some mid-western states as a type of municipality that reports votes and/or for the district that encompasses it.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="utility">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for a utility district.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="village">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used as a type of municipality that reports votes and/or for the district that encompasses it.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="vote-center">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for a vote center.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="ward">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for combinations or groupings of precincts or other units.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="water">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for a water district.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="other">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for other types of reporting units not included in this enumeration.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>
	<xsd:simpleType name="RequestError">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in response messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        Enumeration for registration-related errors, used in the &lt;a href="mdel://_18_0_2_6340208_1455907039816_598163_4597"&gt;Error&lt;/a&gt; attribute of &lt;a href="mdel://_18_0_2_6340208_1458226815148_390496_4430"&gt;RegistrationRejection&lt;/a&gt;.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="identity-lookup-failed">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            A lookup on the voter�s identity failed.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="incomplete">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The registration request is incomplete.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="incomplete-address">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            An address is incomplete.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="incomplete-birth-date">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The registration request does not contain a birthdate.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="incomplete-name">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter�s name is incomplete.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="incomplete-signature">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The registration request does not contain a signature.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="ineligible">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter is ineligible to be registered.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="invalid-form">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The registration form specified is invalid.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="other">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when the type of error is not included in this enumeration.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>
	<xsd:simpleType name="RequestForm">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in request messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        Enumeration for types of registration forms, used in the &lt;a href="mdel://_18_0_2_6340208_1452790770728_957008_4772"&gt;RegistrationForm&lt;/a&gt; attribute of &lt;a href="mdel://_18_0_2_6340208_1446583854986_237644_5961"&gt;VoterRecordsRequest&lt;/a&gt;.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="fpca">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For the Federal Post Card Application form.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="nvra">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For the National Voter Registration Act form.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="other">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when the type of form is not included in this enumeration.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>
	<xsd:simpleType name="RequestMethod">
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="armed-forces-recruitment-office">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter assisted by an armed forces recruitment office.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="motor-vehicle-office">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter via an MVA/DMV.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="other-agency-designated-by-state">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter assisted by an unspecified state-designated agency.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="public-assistance-office">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter assisted by a public assistance office.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="registration-drive-from-advocacy-group-or-political-party">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter via a registration drive.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="state-funded-agency-serving-persons-with-disabilities">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter assisted by a state-designated agency serving persons with disabilities.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="voter-via-election-registrars-office">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter via an election or registrar�s office.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="voter-via-email">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter via email.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="voter-via-fax">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter via fax.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="voter-via-internet">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter via the Internet, e.g., a website.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="voter-via-mail">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter via postal mail.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="unknown">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The method used is unknown.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="other">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when the type of method is not included in this enumeration.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>
	<xsd:simpleType name="RequestProxyType">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in request messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        Enumeration for the registration proxy, e.g., the MVA/DMV , involved in the voter&amp;rsquo;s registration request, used in the       
        &lt;br&gt;&lt;a href="mdel://_18_0_2_6340208_1449004222447_98580_4390"&gt;Type&lt;/a&gt; attribute of &lt;a href="mdel://_18_0_2_6340208_1448401688329_700093_4402"&gt;RegistrationProxy&lt;/a&gt;.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="armed-forces-recruitment-office">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter assisted by an armed forces recruitment office.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="motor-vehicle-office">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter via an MVA/DMV.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="other-agency-designated-by-state">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter assisted by an unspecified state-designated agency.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="public-assistance-office">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter assisted by a public assistance office.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="registration-drive-from-advocacy-group-or-political-party">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter via a registration drive.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="state-funded-agency-serving-persons-with-disabilities">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter assisted by a state-designated agency serving persons with disabilities.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="other">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when the type of source is not included in this enumeration.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>
	<xsd:simpleType name="SignatureSource">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in request messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        Enumeration for source of the voter&amp;rsquo;s signature, used in the &lt;a href="mdel://_18_0_2_6340208_1455826981569_267749_4433"&gt;Source&lt;/a&gt; sub-element of &lt;a href="mdel://_18_0_2_6340208_1452788035217_489009_4409"&gt;Signature&lt;/a&gt;.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="dmv">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For the department of motor vehicles or motor vehicle authority.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="local">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For an unspecified local source.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="state">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For an unspecified state source.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="voter">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter has included a signature on the form.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="other">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when the source of the signature is not included in this enumeration.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>
	<xsd:simpleType name="SignatureType">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in request messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        Enumeration for the type of voter signature, used in the &lt;a href="mdel://_18_0_2_6340208_1452788086928_168327_4463"&gt;Type&lt;/a&gt; sub-element of &lt;a href="mdel://_18_0_2_6340208_1452788035217_489009_4409"&gt;Signature&lt;/a&gt;.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="dynamic">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For use with biometrics or other artifacts captured as part of the act of the voter signing the registration form.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="electronic">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For a facsimile of the signature applied to a marking surface, e.g., paper.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="other">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when the type of signature is not included in this enumeration.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>
	<xsd:simpleType name="SuccessAction">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in response messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        Enumeration for a response to a voter records request, indicating that the response to the request is successful and the action that occurred, used in the &lt;a href="mdel://_18_0_2_6340208_1465405831538_561001_4536"&gt;Action&lt;/a&gt; sub-element of &lt;a href="mdel://_18_0_2_6340208_1460483674993_168854_4684"&gt;RegistrationSuccess&lt;/a&gt;. The success action may not necessarily match the requested action.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="address-updated">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For indicating that an address was updated.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="name-updated">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For indicating that a name was updated.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="registration-cancelled">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For indicating that a registration was cancelled.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="registration-created">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For indicating that a registration was created.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="registration-updated">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For indicating that a registration was updated.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="status-updated">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For indicating that a registration status was updated.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="other">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for other types of success actions not included in this enumeration.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>
	<xsd:simpleType name="VoterClassificationType">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in request messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        Enumeration for voter status classifications, used in the &lt;a href="mdel://_18_0_2_6340208_1452702268850_457342_4324"&gt;Type&lt;/a&gt; attribute of &lt;a href="mdel://_18_0_2_6340208_1452701375494_353834_4295"&gt;VoterClassification&lt;/a&gt;. Whether the voter status, e.g., eighteen-on-election-day, is true, false, or unknown depends on the value of the &lt;a href="mdel://_18_0_2_6340208_1452702303368_675707_4326"&gt;Assertion&lt;/a&gt; attribute.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="activated-national-guard">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter is an activated National Guard member on State orders (FPCA).
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="active-duty">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter is a member of the Uniformed Services or Merchant Marine on active duty (FPCA).
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="active-duty-spouse-or-dependent">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter is an eligible spouse or dependent (FPCA).
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="citizen-abroad-intent-to-return">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter is a US citizen residing outside the US and has intention to return (FPCA).
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="citizen-abroad-return-uncertain">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter is a US citizen residing outside the US and their return is uncertain (FPCA).
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="citizen-abroad-never-resided">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter is a US citizen and has never resided in the US (FPCA).
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="deceased">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter is deceased (NVRA).
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="declared-incompetent">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter has been declared incompetent (NVRA).
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="eighteen-on-election-day">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter will be 18 on election day (NVRA).
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="felon">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter is a felon (NVRA).
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="permanently-denied">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter has not been permanently denied (NVRA).
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="protected-voter">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter status is protected (NVRA).
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="restored-felon">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter is a restored felon (NVRA).
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="united-states-citizen">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter is a United States citizen (NVRA).
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="other">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when the type of voter classification is not included in this enumeration.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>
	<xsd:simpleType name="VoterHelperType">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in request messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        Enumeration for types of registration helpers, used in the &lt;a href="mdel://_18_0_2_6340208_1470256926542_116930_4431"&gt;Type&lt;/a&gt; attribute of &lt;a href="mdel://_18_0_2_6340208_1470256600538_323550_4366"&gt;RegistrationHelper&lt;/a&gt;.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="assistant">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For a registration assistant.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="witness">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For a registration witness.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>
	<xsd:simpleType name="VoterIdType">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in request messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        Enumeration for the type of voter ID, used in the &lt;a href="mdel://_18_0_2_6340208_1448398278989_134134_4433"&gt;Type&lt;/a&gt; attribute of &lt;a href="mdel://_18_0_2_6340208_1448398278986_542661_4430"&gt;VoterId&lt;/a&gt;.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="drivers-license">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for a driver�s license.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="local-voter-registration-id">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for a local voter registration ID.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="ssn">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for a complete Social Security number.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="ssn4">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for the last four digits of a Social Security number.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="state-id">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for a state ID that is not a state voter registration ID.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="state-voter-registration-id">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for a state�s voter registration ID.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="unspecified-document">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for an unspecified document, not known whether the document contains name, address, or photo ID.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="unspecified-document-with-name-and-address">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for a document that contains the voter�s name and address, such as a utility bill.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="unspecified-document-with-photo-identification">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used for a document that contains a photograph of the voter.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="unknown"/>
			<xsd:enumeration value="other">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when the type of ID is not included in this enumeration.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>
	<xsd:simpleType name="VoterRequestType">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in request messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        Enumeration for the type of voter records request, used in the &lt;a href="mdel://_18_0_2_6340208_1446586298843_421997_6821"&gt;Type&lt;/a&gt; attribute of &lt;a href="mdel://_18_0_2_6340208_1446583854986_237644_5961"&gt;VoterRecordsRequest&lt;/a&gt;.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:restriction base="xsd:string">
			<xsd:enumeration value="ballot-request">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For requesting a ballot, possibly in conjunction with an FPCA registration request.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="lookup"/>
			<xsd:enumeration value="registration">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For a voter registration request.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
			<xsd:enumeration value="other">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when the type of request is not included in this enumeration.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:enumeration>
		</xsd:restriction>
	</xsd:simpleType>
	<!-- ========== Interfaces Defined ========== -->
	<!-- === Interface Address === -->
	<xsd:group name="Address">
		<xsd:choice>
			<xsd:element name="NumberedThoroughfareAddress_type" type="NumberedThoroughfareAddress_type"/>
      			<xsd:element name="USPSPostalDeliveryBox_type" type="USPSPostalDeliveryBox_type"/>
		</xsd:choice>
	</xsd:group>
<xsd:complexType name="USPSPostalDeliveryBox_type">
        <xsd:annotation>
            <xsd:documentation>Defining Characteristics:
1. Addresses of this class must include a USPS Box in the required format, and must not include a USPS Route.
2. In addition, all thoroughfare, landmark, and postal addresses must include a Place Name and a State Name. A Zip Code is recommended but not mandatory.
</xsd:documentation>
        </xsd:annotation>
        <xsd:sequence>
            <xsd:element name="USPSBox" type="xsd:string" minOccurs="1" maxOccurs="1"/>
            <xsd:element name="CompleteSubaddress" type="xsd:string" minOccurs="0" maxOccurs="1"/>            
        </xsd:sequence>
        <xsd:attribute name="action" type="xsd:string" use="optional"/>
    </xsd:complexType>
   <xsd:complexType name="NumberedThoroughfareAddress_type">
        <xsd:annotation>
            <xsd:documentation xml:lang="en">Defining Characteristics:
1. Addresses of this class must include a Complete Address Number and a Complete Street Name.
2. In addition, all thoroughfare, landmark, and postal addresses must include a Place Name and a State Name. A Zip Code is recommended but not mandatory.
</xsd:documentation>
        </xsd:annotation>
        <xsd:sequence>
            <xsd:choice>
                <xsd:element name="CompleteLandmarkName" type="xsd:string" minOccurs="0" maxOccurs="1"/>
                <xsd:element name="CompletePlaceName" type="xsd:string" minOccurs="0" maxOccurs="1"/>
            </xsd:choice>
            <xsd:element name="CompleteAddressNumber" type="xsd:string" minOccurs="1" maxOccurs="1"/>
            <xsd:element name="CompleteStreetName" type="xsd:string" minOccurs="1" maxOccurs="1"/>
            <xsd:element name="CompleteSubaddress" type="xsd:string" minOccurs="0" maxOccurs="1"/>           
        </xsd:sequence>
        <xsd:attribute name="action" type="xsd:string" use="optional"/>
    </xsd:complexType>
	<!-- ========== Classes ========== -->
	<xsd:complexType name="AdditionalInfo">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Class for specifying information not addressed in this model by other elements and attributes, e.g. state-specific information that does not &amp;ldquo;fit&amp;rdquo; in any other element. The information will thus be highly specific to the generating application, and consuming applications must &amp;ldquo;know&amp;rdquo; the meaning of the information to make use of it. For this reason, use of this class is discouraged as much as is possible.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        The &lt;a href="mdel://_18_0_2_6340208_1446587603679_902003_6890"&gt;StringValue&lt;/a&gt; and &lt;a href="mdel://_18_0_2_6340208_1464186843386_982801_4458"&gt;FileValue&lt;/a&gt; attributes are both optional, however exactly one of them must be included.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="FileValue" type="File" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used if the value is in a file; contains the filename and MIME type
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Name" type="xsd:string">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Name of the value.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="StringValue" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used if the value is a string; contains the string.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="BallotRequest">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        An abstract class representing a request for a ballot. Classes for specific types of BallotRequest inherit the attributes and define their own.
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="BallotReceiptPreference" type="BallotReceiptMethod" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            &lt;p&gt;
            The voter''s preference on how to receive their ballot in order from their most preferred method to least, used if it is a pre-election day ballot request. If omitted, the default method for the &lt;a href="mdel://_18_0_2_6340208_1452790770728_957008_4772"&gt;form&lt;/a&gt; will be used.
            
                &lt;/p&gt;
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="MailForwardingAddress" minOccurs="0">
				<xsd:complexType>
					<xsd:sequence>
						<xsd:group ref="Address" minOccurs="0" maxOccurs="1"/>
					</xsd:sequence>
				</xsd:complexType>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="BallotStyle">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        For defining a ballot style composed of ordered content (i.e. Headers or Contests) and their ballot selections, and associating the ballot style with a political party, a reference to an image of the ballot, and a reference to the a precinct or other geopolitical unit that the ballot is unique to. &lt;a href="mdel://_17_0_2_4_f71035d_1426101822599_430942_2209"&gt;Election&lt;/a&gt; includes BallotStyle.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        BallotStyle references &lt;a href="mdel://_18_5_3_43701b0_1520434015209_434672_4990"&gt;OrderedContent&lt;/a&gt; to include content that appears on that ballot style. To preserve any rotation associated with the ballot, it is expected that the generating application will list the occurrences of &lt;a href="mdel://_17_0_3_43401a7_1394476416139_808596_3142"&gt;OrderedContest&lt;/a&gt; in the order as on the ballot for the associated geopolitical unit.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        BallotStyle references one or more &lt;a href="mdel://_17_0_2_4_78e0236_1389366233346_42391_2380"&gt;GpUnit&lt;/a&gt; instances defined for the associated precincts or split precincts. If the ballot style is associated with multiple precincts (or other geographies), multiple references to the precinct &lt;a href="mdel://_17_0_2_4_78e0236_1389366233346_42391_2380"&gt;GpUnit&lt;/a&gt; instances can be included.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        When including &lt;a href="mdel://_17_0_2_4_f71035d_1430405712653_451634_2410"&gt;ExternalIdentifier&lt;/a&gt;, if the type is not listed in enumeration &lt;a href="mdel://_17_0_2_4_f71035d_1425061188508_163854_2613"&gt;IdentifierType&lt;/a&gt;, use other and include the type (that is not listed in the enumeration) in &lt;a href="mdel://_17_0_2_4_f71035d_1430405732252_109247_2429"&gt;OtherType&lt;/a&gt;.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="ExternalIdentifier" type="ExternalIdentifier" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For associating an ID with the ballot style.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="ImageUri" type="xsd:anyURI" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            URI for a ballot image.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Party" type="Party" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Unique identifier for one or more Party instances.  For associating one or more parties with the ballot style.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="ContactMethod">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in request and response messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &lt;a href="mdel://_18_0_2_6340208_1458237760549_706380_5243"&gt;ElectionAdministration&lt;/a&gt; optionally includes this class to specify how to contact the election administration.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &lt;a href="mdel://_18_0_2_6340208_1446583854986_159465_5958"&gt;VoterRegistration&lt;/a&gt; optionally includes this class to specify the method for contacting a voter regarding the voter&amp;rsquo;s registration request. If the voter can be contacted in multiple ways, the application creating the data should order the occurrences of &lt;a href="mdel://_18_0_2_6340208_1464893400979_739933_4444"&gt;ContactMethod&lt;/a&gt; by priority.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        The &lt;a href="mdel://_18_0_2_6340208_1465493970792_917703_4430"&gt;PhoneContactMethod&lt;/a&gt; class uses &lt;a href="mdel://_18_0_2_6340208_1464893400979_739933_4444"&gt;ContactMethod&lt;/a&gt; as a base class, and should be used with when the contact method is for a telephone and it is necessary to describe the capabilities of the telephone.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        The &lt;a href="mdel://_18_0_2_6340208_1465493985158_54379_4458"&gt;Capability&lt;/a&gt; attribute is provided by the &lt;a href="mdel://_18_0_2_6340208_1465493970792_917703_4430"&gt;PhoneContactMethod&lt;/a&gt; class.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="OtherType" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when ContactMethodType value is other.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Type" type="ContactMethodType">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The contact method type, e.g. email or phone.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Value" type="xsd:string">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The value of the ContactMethod. This will be the text value of the phone number, email address, or other mechanism. The values must be free of any formatting characters, such as parentheses or dashes for a phone number.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="Election">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        Describes an election event. Only the date of the election is required. Other attributes may be used to describe the election for which a ballot is requested.
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="EndDate" type="xsd:date" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For an election that spans multiple days, the last day of the election.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="ExternalIdentifier" type="ExternalIdentifier" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For associating an ID with the election.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Name" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For including a name for the election; the name could be the same name as appears on the ballot.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="StartDate" type="xsd:date">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The first day of the election.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="ElectionAdministration">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in response messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;      
        &lt;br&gt;&lt;a href="mdel://_18_0_2_6340208_1458237760549_706380_5243"&gt;ElectionAdministration&lt;/a&gt; optionally includes &lt;a href="mdel://_18_0_2_6340208_1467137072139_851331_4587"&gt;ContactMethod&lt;/a&gt; to specify contact information for the election authority.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="ContactMethod" type="ContactMethod" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For including various contact information.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Location" type="Location" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Location of the election authority.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Name" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Name of the election authority.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Uri" type="xsd:anyURI" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            A URL for the election authority.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="ElectionBasedBallotRequest">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        A kind of ballot request in which a ballot for a single election event is requested.
      </xsd:documentation>
		</xsd:annotation>
		<xsd:complexContent>
			<xsd:extension base="BallotRequest">
				<xsd:sequence>
					<xsd:element name="Election" type="Election">
						<xsd:annotation>
							<xsd:documentation xml:lang="en">
                The election for which the ballot is requested.
              </xsd:documentation>
						</xsd:annotation>
					</xsd:element>
				</xsd:sequence>
			</xsd:extension>
		</xsd:complexContent>
	</xsd:complexType>
	<xsd:complexType name="ExternalIdentifier">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in request and response messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &lt;a href="mdel://_18_5_2_43701b0_1510603645561_775691_5960"&gt;Election&lt;/a&gt;, &lt;a href="mdel://_18_0_2_6340208_1446583854985_482559_5956"&gt;Party&lt;/a&gt; and &lt;a href="mdel://_18_0_2_6340208_1458229422042_966646_4539"&gt;ReportingUnit&lt;/a&gt; optionally include this class for associating a jurisdiction&amp;rsquo;s codes, i.e., identifiers, with political parties or geopolitical units such as counties, towns, precincts, etc. Multiple occurrences of &lt;a href="mdel://_18_0_2_6340208_1446584770723_729230_6705"&gt;ExternalIdentifier&lt;/a&gt; can be used to associate multiple codes, e.g., if there is a desire to associate multiple codes with an object such as state-specific codes as well as OCD-IDs (Open Civic Data Identifiers).
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="OtherType" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when Type value is other.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Type" type="IdentifierType">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            An identifier type, e.g., FIPS.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Value" type="xsd:string">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The identifier used by the jurisdiction.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="File">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in request messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &lt;a href="mdel://_18_0_2_6340208_1448398278986_542661_4430"&gt;VoterId&lt;/a&gt; optionally uses this class for &lt;a href="mdel://_18_0_2_6340208_1464186405548_20750_4438"&gt;FileValue&lt;/a&gt; to specify a filename for voter identification purposes such as for a utility bill. &lt;a href="mdel://_18_0_2_6340208_1446587509996_176108_6861"&gt;AdditionalInfo&lt;/a&gt; also optionally includes &lt;a href="mdel://_18_0_2_6340208_1464186843386_982801_4458"&gt;FileValue&lt;/a&gt;.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        File extends the xsd:base64Binary type to add the attributes for filename and (Multi-Purpose Internet Mail Extensions) MIME type, e.g., application/pdf for a file of type PDF.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        The &lt;a href="mdel://_18_0_2_6340208_1452879607465_248768_5229"&gt;Image&lt;/a&gt; element uses this element as an supertype, thus &lt;a href="mdel://_18_0_2_6340208_1452879607465_248768_5229"&gt;Image&lt;/a&gt; can be used when the type of file is for an image, e.g., image/png.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:simpleContent>
			<xsd:extension base="xsd:base64Binary">
				<xsd:attribute name="fileName" type="xsd:string">
					<xsd:annotation>
						<xsd:documentation xml:lang="en">
              The filename.
            </xsd:documentation>
					</xsd:annotation>
				</xsd:attribute>
				<xsd:attribute name="mimeType" type="xsd:string">
					<xsd:annotation>
						<xsd:documentation xml:lang="en">
              The MIME type associated with the file.
            </xsd:documentation>
					</xsd:annotation>
				</xsd:attribute>
			</xsd:extension>
		</xsd:simpleContent>
	</xsd:complexType>
	<xsd:complexType name="LatLng">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in response messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &lt;a href="mdel://_18_0_2_6340208_1460480132036_876890_4538"&gt;Location&lt;/a&gt; optionally includes this element to specify the latitude and longitude of a voter&amp;rsquo;s voting location.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="Latitude" type="xsd:float">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Latitude of the contact location.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Longitude" type="xsd:float">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Longitude of the contact location.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Source" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            System used to perform the lookup from location name to lat/lng, e.g., the name of a geocoding service.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="Location">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in response messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &lt;a href="mdel://_18_0_2_6340208_1458229422042_966646_4539"&gt;ReportingUnit&lt;/a&gt; and &lt;a href="mdel://_18_0_2_6340208_1458237760549_706380_5243"&gt;ElectionAdministration&lt;/a&gt; optionally include this element to specify the address and directions to a voter&amp;rsquo;s voting location. The &lt;a href="mdel://_18_0_2_6340208_1458229746146_45435_4773"&gt;LatLng&lt;/a&gt; element can be included to specify the latitude and longitude of the voting location.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="Address" minOccurs="0">
				<xsd:complexType>
					<xsd:sequence>
						<xsd:group ref="Address" minOccurs="0" maxOccurs="1"/>
					</xsd:sequence>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="Directions" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Directions to the voting location.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="LatLng" type="LatLng" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Latitude/longitude of the voting location.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="Name">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in request messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &lt;a href="mdel://_18_5_3_43701b0_1520354792154_717315_5628"&gt;Voter&lt;/a&gt; includes this class for specifying the name of a voter and, optionally, for specifying a previous name of the voter, using &lt;a href="mdel://_18_0_2_6340208_1446583855001_628958_6011"&gt;PreviousName&lt;/a&gt; instead of Name. &lt;a href="mdel://_18_0_2_6340208_1470256600538_323550_4366"&gt;ReguestHelper&lt;/a&gt; also includes this class for specifying the name of a registration helper.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        Multiple occurrences of the &lt;a href="mdel://_18_0_2_6340208_1453305616868_302875_4310"&gt;MiddleName&lt;/a&gt; attribute can be used as needed, e.g., for names with additional middle names or nicknames such as &amp;ldquo;John Andrew Winston (Jack) Smith&amp;rdquo;.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        All elements are optional, however at least &lt;a href="mdel://_18_0_2_6340208_1446591484368_838009_7101"&gt;FullName&lt;/a&gt; must be included if the other attributes are not.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="FirstName" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Person�s first (given) name.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="FullName" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Person�s full name.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="LastName" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Person�s last (family) name.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="MiddleName" type="xsd:string" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Person�s middle name.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Prefix" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            A prefix associated with the person, e.g., Mr.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Suffix" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            A suffix associated with the person, e.g., Jr.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="Party">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in request messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &lt;a href="mdel://_18_5_3_43701b0_1520354792154_717315_5628"&gt;Voter&lt;/a&gt; includes this element to specify a voter&amp;rsquo;s political party.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="Abbreviation" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Short name for the party, e.g., �DEM�.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="ExternalIdentifier" type="ExternalIdentifier" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For associating an ID with the party.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Name" type="xsd:string">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Official full name of the party, e.g., �Republican�.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="PermanentBallotRequest">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        A kind of ballot request which serves to request ballots for election events that the voter is qualified on a long term basis. Although "permanent", the request may be subject to renewal or cancellation procedures.
      </xsd:documentation>
		</xsd:annotation>
		<xsd:complexContent>
			<xsd:extension base="BallotRequest"/>
		</xsd:complexContent>
	</xsd:complexType>
	<xsd:complexType name="PhoneContactMethod">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in request and response messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &lt;a href="mdel://_18_0_2_6340208_1470256600538_323550_4366"&gt;RequestHelper&lt;/a&gt;, and &lt;a href="mdel://_18_0_2_6340208_1448401688329_700093_4402"&gt;RequestProxy&lt;/a&gt; use this class to specify a telephone number as well as the capabilities of the telephone, e.g., sms, fax, etc.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        PhoneContactMethod is subtype &lt;a href="mdel://_18_0_2_6340208_1464893400979_739933_4444"&gt;ContactMethod&lt;/a&gt;. Thus, the elements that include &lt;a href="mdel://_18_0_2_6340208_1464893400979_739933_4444"&gt;ContactMethod&lt;/a&gt; could use PhoneContactMethod as applicable.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:complexContent>
			<xsd:extension base="ContactMethod">
				<xsd:sequence>
					<xsd:element name="Capability" type="PhoneCapability" minOccurs="0" maxOccurs="unbounded">
						<xsd:annotation>
							<xsd:documentation xml:lang="en">
                Specifies the phone�s capabilities, e.g., fax, sms.
              </xsd:documentation>
						</xsd:annotation>
					</xsd:element>
				</xsd:sequence>
			</xsd:extension>
		</xsd:complexContent>
	</xsd:complexType>
	<xsd:complexType name="ReportingUnit">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in response messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &lt;a href="mdel://_18_0_2_6340208_1455906719413_171772_4514"&gt;VoterRecordsResponse&lt;/a&gt; includes this class when a registration request is successful so as to provide a list of geopolitical geography associated with the voter&amp;rsquo;s registration, e.g., the voter&amp;rsquo;s precinct, polling place, districts, etc. The Type attribute uses the &lt;a href="mdel://_18_0_2_6340208_1458229388461_823405_4464"&gt;ReportingUnitType&lt;/a&gt; enumeration to specify the type of geopolitical geography being defined. If the reporting unit type is not listed in enumeration &lt;a href="mdel://_18_0_2_6340208_1458229388461_823405_4464"&gt;ReportingUnitType&lt;/a&gt;, use other and include the reporting unit type (that is not listed in the enumeration) in OtherType.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        The IsDistricted boolean is not strictly necessary, as it is possible to identify districts by their Type attribute. However, if the type of district is not listed in the &lt;a href="mdel://_18_0_2_6340208_1458229388461_823405_4464"&gt;ReportingUnitType&lt;/a&gt; enumeration and therefore OtherType is used, then IsDistricted is necessary. The IsDistricted boolean can also be used to signify that a ReportingUnit defined as a jurisdiction, e.g., a county, is also used as a district for, e.g., county-wide contests.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="ExternalIdentifier" type="ExternalIdentifier" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For associating an ID with the ReportingUnit.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="IsDistricted" type="xsd:boolean" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Boolean to indicate that the reporting unit is a district.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Location" type="Location" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Location of the district office.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Name" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Name of the reporting unit.Name of the reporting unit.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="OtherType" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when ReportingUnitType value is other.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Type" type="ReportingUnitType">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Enumerated type of reporting unit, e.g., district, precinct.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="RequestAcknowledgement">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        &lt;a href="mdel://_18_5_3_43701b0_1520354792154_717315_5628"&gt;Voter&lt;/a&gt; optionally includes this element to specify information about a request  helper, i.e., a request assistant or witness involved in a voter&amp;rsquo;s request.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        RequestAssistant includes the &lt;a href="mdel://_18_0_2_6340208_1446583854986_538708_5957"&gt;Name&lt;/a&gt; element to specify the registration helper&amp;rsquo;s name and optionally includes the &lt;a href="mdel://_18_0_2_6340208_1452788035217_489009_4409"&gt;Signature&lt;/a&gt; element if a registration helper&amp;rsquo;s signature is required.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:complexContent>
			<xsd:extension base="VoterRecordsResponse"/>
		</xsd:complexContent>
	</xsd:complexType>
	<xsd:complexType name="RequestHelper">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        &lt;a href="mdel://_18_0_2_6340208_1446583854986_237644_5961"&gt;VoterRecordsRequest&lt;/a&gt; optionally includes this element to specify information about a request helper, i.e., a request assistant or witness involved in a voter&amp;rsquo;s request.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        RequestAssistant includes the &lt;a href="mdel://_18_0_2_6340208_1446583854986_538708_5957"&gt;Name&lt;/a&gt; element to specify the registration helper&amp;rsquo;s name and optionally includes the &lt;a href="mdel://_18_0_2_6340208_1452788035217_489009_4409"&gt;Signature&lt;/a&gt; element if a registration helper&amp;rsquo;s signature is required.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="Address" minOccurs="0">
				<xsd:complexType>
					<xsd:sequence>
						<xsd:group ref="Address" minOccurs="0" maxOccurs="1"/>
					</xsd:sequence>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="Name" type="Name" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            To specify the name of the helper.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Phone" type="PhoneContactMethod" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Request helper�s phone number.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Signature" type="Signature" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            To specify the signature of the helper.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Type" type="VoterHelperType">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            To specify the type of helper, e.g., assistant.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="RequestProxy">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in request messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &lt;a href="mdel://_18_0_2_6340208_1446583854986_237644_5961"&gt;VoterRecordsRequest&lt;/a&gt; optionally includes this class to specify information about a request proxy involved in a voter records request.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        OriginTransactionId can be used to include an optional identifier of the originating external transaction from the proxy, e.g., used for the transaction ID generated by a DMV application enacting a voter registration request to a registration portal application (on behalf of a citizen obtaining a driver&amp;rsquo;s license). This sub-element is not to be confused with TransactionId in &lt;a href="mdel://_18_0_2_6340208_1446583854986_237644_5961"&gt;VoterRecordsRequest&lt;/a&gt;, which is used to include a transaction ID of the voter records request, e.g., the transaction ID of the registration portal&amp;rsquo;s voter records request.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="Address" minOccurs="0">
				<xsd:complexType>
					<xsd:sequence>
						<xsd:group ref="Address" minOccurs="0" maxOccurs="1"/>
					</xsd:sequence>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="Name" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            A name associated with the proxy.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="OriginTransactionId" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            An identifier associated with the transaction between the proxy and, e.g., the registration portal.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="OtherType" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when RegistrationProxyType value is other.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Phone" type="PhoneContactMethod" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            A phone number associated with the proxy.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="TimeStamp" type="xsd:date" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The date of the request from the proxy.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Type" type="RequestProxyType">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The type of the requesting proxy, e.g., motor-vehicle-office, voter-via-email.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="RequestRejection">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        Used in responses.
        
        For indicating that the request failed. The Error attribute is used to indicate the type of error that occurred. The AdditionalDetails attribute can be used to provide more information as to the rejection.
      </xsd:documentation>
		</xsd:annotation>
		<xsd:complexContent>
			<xsd:extension base="VoterRecordsResponse">
				<xsd:sequence>
					<xsd:element name="AdditionalDetails" type="xsd:string" minOccurs="0" maxOccurs="unbounded">
						<xsd:annotation>
							<xsd:documentation xml:lang="en">
                Used to provide additional details as applicable.
              </xsd:documentation>
						</xsd:annotation>
					</xsd:element>
					<xsd:element name="Error" type="RequestError" minOccurs="0" maxOccurs="unbounded">
						<xsd:annotation>
							<xsd:documentation xml:lang="en">
                Used to indicate the type of error.
              </xsd:documentation>
						</xsd:annotation>
					</xsd:element>
					<xsd:element name="OtherError" type="xsd:string" minOccurs="0" maxOccurs="unbounded">
						<xsd:annotation>
							<xsd:documentation xml:lang="en">
                Used when RegistrationError value is other.
              </xsd:documentation>
						</xsd:annotation>
					</xsd:element>
				</xsd:sequence>
			</xsd:extension>
		</xsd:complexContent>
	</xsd:complexType>
	<xsd:complexType name="RequestSuccess">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        Used in responses.
        
        For indicating a successful response to a request. The Action attribute is used to indicate the action that occurred, which may differ from what was requested. For example, a request for a new voter registration may succeed, but if the voter was already registered, the response may indicate a registration update as opposed to a registration create.
        
        The response also includes, optionally, other information useful to the voter, including a description of the voter�s polling place, districts (i.e., contests) associated with the polling place, or other geopolitical geographies such as the voter�s precinct.
      </xsd:documentation>
		</xsd:annotation>
		<xsd:complexContent>
			<xsd:extension base="VoterRecordsResponse">
				<xsd:sequence>
					<xsd:element name="Action" type="SuccessAction" minOccurs="0" maxOccurs="unbounded">
						<xsd:annotation>
							<xsd:documentation xml:lang="en">
                Used to indicate the action that occurred.
              </xsd:documentation>
						</xsd:annotation>
					</xsd:element>
					<xsd:element name="District" type="ReportingUnit" minOccurs="0" maxOccurs="unbounded">
						<xsd:annotation>
							<xsd:documentation xml:lang="en">
                One or more districts associated with the voter�s precinct.
              </xsd:documentation>
						</xsd:annotation>
					</xsd:element>
					<xsd:element name="EffectiveDate" type="xsd:date" minOccurs="0">
						<xsd:annotation>
							<xsd:documentation xml:lang="en">
                The effective date of the action.
              </xsd:documentation>
						</xsd:annotation>
					</xsd:element>
					<xsd:element name="ElectionAdministration" type="ElectionAdministration" minOccurs="0">
						<xsd:annotation>
							<xsd:documentation xml:lang="en">
                The election administration that conducts elections for the voter.
              </xsd:documentation>
						</xsd:annotation>
					</xsd:element>
					<xsd:element name="Locality" type="ReportingUnit" minOccurs="0" maxOccurs="unbounded">
						<xsd:annotation>
							<xsd:documentation xml:lang="en">
                Other geographies such as the voter�s precinct.
              </xsd:documentation>
						</xsd:annotation>
					</xsd:element>
					<xsd:element name="PollingPlace" type="ReportingUnit" minOccurs="0">
						<xsd:annotation>
							<xsd:documentation xml:lang="en">
                The voter�s polling place.
              </xsd:documentation>
						</xsd:annotation>
					</xsd:element>
				</xsd:sequence>
			</xsd:extension>
		</xsd:complexContent>
	</xsd:complexType>
	<xsd:complexType name="Signature">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in request messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &lt;a href="mdel://_18_5_3_43701b0_1520354792154_717315_5628"&gt;Voter&lt;/a&gt;  includes this class for specifying information about a voter&amp;rsquo;s signature on a registration request. If there is a need to include previous signature that uses a different name, e.g., a maiden name, &lt;a href="mdel://_18_5_3_43701b0_1520354792154_717315_5628"&gt;Voter&lt;/a&gt; uses PreviousSignature instead of Signature.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        Source is used to specify the source of the voter&amp;rsquo;s signature, for example, on file at a department of motor vehicles. FileValue is used to include an image of the voter&amp;rsquo;s signature.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="Date" type="xsd:date" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The date of the signature, i.e., when created.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="FileValue" type="File" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The signature image in base 64 binary
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="OtherSource" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when Source value is other.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="OtherType" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when SignatureType value is other.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Source" type="SignatureSource" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            A source for the signature, e.g., dmv.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Type" type="SignatureType" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            A signature type, e.g., dynamic.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="TemporalBallotRequest">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        A kind of ballot request in which election opportunities that the voter is qualified during a given time frame will be requested.
      </xsd:documentation>
		</xsd:annotation>
		<xsd:complexContent>
			<xsd:extension base="BallotRequest">
				<xsd:sequence>
					<xsd:element name="EndDate" type="xsd:date">
						<xsd:annotation>
							<xsd:documentation xml:lang="en">
                The date at which the request is no longer effective.
              </xsd:documentation>
						</xsd:annotation>
					</xsd:element>
					<xsd:element name="StartDate" type="xsd:date">
						<xsd:annotation>
							<xsd:documentation xml:lang="en">
                The date the request comes into effect.
              </xsd:documentation>
						</xsd:annotation>
					</xsd:element>
				</xsd:sequence>
			</xsd:extension>
		</xsd:complexContent>
	</xsd:complexType>
	<xsd:complexType name="Voter">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        Voter contains attributes specific to identifying a voter.
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="ContactMethod" type="ContactMethod" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            How to contact the voter, listed in order of preference.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="DateOfBirth" type="xsd:date" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter�s data of birth in YYYY-MM-DD
            format.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Ethnicity" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The voter�s ethnicity.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Gender" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Older systems may not understand values other than ''Male'' or ''Female'' (the only choices available on FPCA).
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="MailingAddress" minOccurs="0">
				<xsd:complexType>
					<xsd:sequence>
						<xsd:group ref="Address" minOccurs="0" maxOccurs="1"/>
					</xsd:sequence>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="Name" type="Name">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Voter�s name.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Party" type="Party" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Voter�s political party.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="PreviousName" type="Name" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            A voter�s previous name.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="PreviousResidenceAddress" minOccurs="0">
				<xsd:complexType>
					<xsd:sequence>
						<xsd:group ref="Address" minOccurs="0" maxOccurs="1"/>
					</xsd:sequence>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="PreviousSignature" type="Signature" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Information about a previous voter signature on the registration form.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="ResidenceAddress">
				<xsd:complexType>
					<xsd:sequence>
						<xsd:group ref="Address" minOccurs="1" maxOccurs="1"/>
					</xsd:sequence>
				</xsd:complexType>
			</xsd:element>
			<xsd:element name="ResidenceAddressIsMailingAddress" type="xsd:boolean" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            If set to true, &lt;MailingAddress&gt; need not be included.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Signature" type="Signature" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Information about the voter signature on the registration form.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="VoterClassification" type="VoterClassification" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            How the voter is classified per assertions the voter has made on a registration form.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="VoterId" type="VoterId" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Information to provide voter identity.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="VoterClassification">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        &lt;a href="mdel://_18_5_3_43701b0_1520354792154_717315_5628"&gt;Voter&lt;/a&gt; includes this class to describe a voter&amp;rsquo;s classification per criteria on the voter&amp;rsquo;s request form, e.g., united-states-citizen or eighteen-on-election-day.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        VoterClassification includes assertions of the voter in response to the voter request form criteria. For example, an assertion of true may be used with a criterion of united-states-citizen. Assertions can be negative, such as providing an assertion of false for a criterion of felon, an assertion of unknown to indicate that the voter does not know whether they meet or do not meet the specific criteria on the form or an assertion of other, in which the assertion is specified by the value of OtherAssertion.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="Assertion" type="AssertionValue">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            A positive, negative, other or unknown assertion
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="OtherAssertion" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            An locally defined assertion value.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="OtherType" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when VoterClassificationType value is other.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Type" type="VoterClassificationType">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            A classification type, e.g., felon.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="VoterId">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        Used in request messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        Used to include information about a voter&amp;rsquo;s identification that may be required in a registration request. &lt;a href="mdel://_18_5_3_43701b0_1520354792154_717315_5628"&gt;Voter&lt;/a&gt; includes VoterId.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        AttestNoSuchId is used to attest that the voter has no ID of a specified type, thus it must be included with a value of true if attesting that the voter has no ID for that specified type. It can be included with a value of false to attest that the voter does have an ID of the specified type, in which case either StringValue or FileValue must be included; however, it is assumed to be false if not included. The StringValue and FileValue sub-elements are both optional, however at least one of them must be included.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="AttestNoSuchId" type="xsd:boolean" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used to attest that the voter has no ID. Assumed to be false if not present.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="DateOfIssuance" type="xsd:date" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Date the ID was issued.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="FileValue" type="File" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used to include a file name for the ID.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="OtherType" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when VoterIdType value is other.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="StringValue" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used to include the ID as a string.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Type" type="VoterIdType">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The type of voter ID.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="VoterParticipation">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        For indicating an election that the voter participated in. Participation does not imply a counted ballot.
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="BallotStyle" type="BallotStyle" minOccurs="0"/>
			<xsd:element name="Election" type="Election"/>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="VoterRecord">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        A subtype of Voter representing a voter record stored in a Voter Registration Database (VRDB).
        
        VoterRecord optionally contains additional information useful to the voter, including a description of the voter�s polling place, districts associated with the polling place, or other geopolitical geographies such as the voter�s precinct.
      </xsd:documentation>
		</xsd:annotation>
		<xsd:complexContent>
			<xsd:extension base="Voter">
				<xsd:sequence>
					<xsd:element name="District" type="ReportingUnit" minOccurs="0" maxOccurs="unbounded">
						<xsd:annotation>
							<xsd:documentation xml:lang="en">
                One or more districts associated with the voter�s precinct.
              </xsd:documentation>
						</xsd:annotation>
					</xsd:element>
					<xsd:element name="ElectionAdministration" type="ElectionAdministration" minOccurs="0">
						<xsd:annotation>
							<xsd:documentation xml:lang="en">
                The election administration that conducts elections for the voter.
              </xsd:documentation>
						</xsd:annotation>
					</xsd:element>
					<xsd:element name="Locality" type="ReportingUnit" minOccurs="0" maxOccurs="unbounded">
						<xsd:annotation>
							<xsd:documentation xml:lang="en">
                Other geographies such as the voter�s precinct.
              </xsd:documentation>
						</xsd:annotation>
					</xsd:element>
					<xsd:element name="PollingLocation" type="ReportingUnit" minOccurs="0">
						<xsd:annotation>
							<xsd:documentation xml:lang="en">
                The voter�s polling place.
              </xsd:documentation>
						</xsd:annotation>
					</xsd:element>
					<xsd:element name="VoterParticipation" type="VoterParticipation" minOccurs="0" maxOccurs="unbounded"/>
				</xsd:sequence>
			</xsd:extension>
		</xsd:complexContent>
	</xsd:complexType>
	<xsd:complexType name="VoterRecords">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        Used in responses.
        
        For indicating a successful response to a lookup request.
        
        A lookup for a single voter may result in multiple VoterRecords being returned. This can occur if the voter has duplicate records in the VRDB, or if the criteria specified in the lookup request was broad.
      </xsd:documentation>
		</xsd:annotation>
		<xsd:complexContent>
			<xsd:extension base="VoterRecordsResponse">
				<xsd:sequence>
					<xsd:element name="VoterRecord" type="VoterRecord" minOccurs="0" maxOccurs="unbounded">
						<xsd:annotation>
							<xsd:documentation xml:lang="en">
                A particular voter record returned.
              </xsd:documentation>
						</xsd:annotation>
					</xsd:element>
				</xsd:sequence>
			</xsd:extension>
		</xsd:complexContent>
	</xsd:complexType>
	<xsd:complexType name="VoterRecordsRequest">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        &lt;p&gt;
        The root element for request messages.
        
            &lt;/p&gt;
        
            &lt;p&gt;
        &amp;#160;
        
            &lt;/p&gt;
        
            &lt;p&gt;
        For defining items pertaining to the status and type of the voter records request and when it was generated. VoterRecordsRequest includes the &lt;a href="mdel://_18_0_2_6340208_1465929705246_568919_4464"&gt;VoterRegistration&lt;/a&gt; association to specify various information about the voter in question. It includes the &lt;a href="mdel://_18_5_2_43701b0_1510599050811_549888_5731"&gt;AbsenteeBallotRequest&lt;/a&gt; association to handle a request for an absentee ballot; this request may be part of an FPCA form registration or may be submitted independently.
        
            &lt;/p&gt;
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="AdditionalInfo" type="AdditionalInfo" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            For including other information not specified by this model.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="BallotRequest" type="BallotRequest" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Specifies information relating to a request for a ballot.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Form" type="RequestForm" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            If the request is for a voter registration, the registration form used by the voter.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="GeneratedDate" type="xsd:date">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The date that the voter records request was generated.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Issuer" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The name of the issuer of the voter records request transaction, e.g., State of West Virginia Voter Registration Portal.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="OtherForm" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when &lt;RegistrationForm&gt; value is other.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="OtherRequestMethod" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Used when &lt;RegistrationMethod&gt; value is other.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="OtherType" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            &lt;p&gt;
            Used when &lt;a href="mdel://_18_0_2_6340208_1446586298843_421997_6821"&gt;RequestType&lt;/a&gt; value is other.
            
                &lt;/p&gt;
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="RequestHelper" type="RequestHelper" minOccurs="0" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Included if the registration involves a registration assistant organization.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="RequestMethod" type="RequestMethod">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The method used by the voter to register.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="RequestProxy" type="RequestProxy" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Included if the registration request is via a proxy, e.g., the DMV.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="SelectedLanguage" type="xsd:language" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The language specified by the voter, if any.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Subject" type="Voter">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Specifies information about the voter who is the subject of the request.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="TransactionId" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            An identifier of the voter records request transaction.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="Type" type="VoterRequestType" maxOccurs="unbounded">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            The type of request, e.g., registration.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
			<xsd:element name="VendorApplicationId" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            An identifier of the vendor application generating the voter registration request, e.g., X-VRDB Version 3.1.a.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
	<xsd:complexType name="VoterRecordsResponse" abstract="true">
		<xsd:annotation>
			<xsd:documentation xml:lang="en">
        The root element for response messages.  
        
        For defining items pertaining to the status of a response to a voter records request.  &lt;VoterRecordsResponse&gt; is an abstract element with three xsi:types that get used according to the type of response:
        �	&lt;VoterRecordsResponse xsi:type="RegistrationAcknowledgement"&gt;, used to indicate an acknowledgement only.
        �	&lt;VoterRecordsResponse xsi:type="RegistrationRejection"&gt;, used to indicate a failure and the type of failure.
        �	&lt;VoterRecordsResponse xsi:type="RegistrationSuccess"&gt;, used to indication that a successful registration action occurred and the type of registration action, which may differ from the type of registration action requested.
        
        &lt;VoterRecordsResponse&gt; optionally includes the &lt;TransactionId&gt; sub-element associated with the voter records request.
      </xsd:documentation>
		</xsd:annotation>
		<xsd:sequence>
			<xsd:element name="TransactionId" type="xsd:string" minOccurs="0">
				<xsd:annotation>
					<xsd:documentation xml:lang="en">
            Transaction ID associated with the voter records request.
          </xsd:documentation>
				</xsd:annotation>
			</xsd:element>
		</xsd:sequence>
	</xsd:complexType>
</xsd:schema>
';
GO