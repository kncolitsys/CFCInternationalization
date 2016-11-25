<cfprocessingdirective pageEncoding="utf-8" />
<cfimport taglib="/i18n/tags/" prefix="i18n" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<title>I18n For CF</title>
		
		<link rel="stylesheet" href="../docs/main.css" TYPE="text/css" />
		
	</head>
	<body>
	
	<cfscript>
		import i18n.impl.*;
		import i18n.util.*;
		
		/**
		 * The resulting instance of LocalizedStrings produced by the StringsFactory should 
		 * be considered a singleton and managed as such.  Initialization of that object 
		 * should only be required once during the lifetime of your application.
		 */
		if (!isDefined("application.strings")) {
			factory = new StringsFactory();
			application.strings = factory.getStrings(directory=expandPath("\i18n\samples\strings"), defaultLocale="en");
		}
		
		variables.strings = application.strings;
		
	</cfscript>
	
	<h1>Strings Internationalization API for ColdFusion</h1>
		
	<h2>Sample</h2>
	
	<table border="1" cellpadding="2">

		<th style="background-color:#e5e5e5;">English</th>
		<th style="background-color:#e5e5e5;">Spanish</th>
		<th style="background-color:#e5e5e5;">Russian</th>
		<th style="background-color:#e5e5e5;">Korean</th>
		
		<cfoutput>	
		<tr>
			<td>#strings.getString(key="hello.world")#</td>
			<td>#strings.getString(key="hello.world", locale="es")#</td>
			<!--- // sample usage of the custom tag // --->
			<td><i18n:string key="hello.world" locale="ru" /></td>
			<td><i18n:string key="hello.world" locale="ko" /></td>
		</tr>
		
		<tr>
			<td>#strings.getString(key="welcome.message")#</td>
			<td>#strings.getString(key="welcome.message", locale="es")#</td>
			<!--- // sample usage of the custom tag // --->
			<td><i18n:string key="welcome.message" locale="ru" /></td>
			<td><i18n:string key="welcome.message" locale="ko" /></td>
		</tr>
		
		<tr>
			<td>#strings.getString(key="parameterized.string", name="Some Name", email="someemail@somedomain.com")#</td>
			<td>#strings.getString(key="parameterized.string", locale="es", name="Some Name", email="someemail@somedomain.com")#</td>
			<!--- // sample usage of the custom tag // --->
			<td><i18n:string key="parameterized.string" name="Some Name" email="someemail@somedomain.com" locale="ru" /></td>
			<td><i18n:string key="parameterized.string" name="Some Name" email="someemail@somedomain.com" locale="ko" /></td>
		</tr>
		
		<tr>
			<td>#strings.getString(key="disclaimer")#</td>
			<td>#strings.getString(key="disclaimer", locale="es")#</td>
			<td><i18n:string key="disclaimer" locale="ru" /></td>
			<td><i18n:string key="disclaimer" locale="ko" /></td>
		</tr>
		
		</cfoutput>
		
	</table>
	
	<p>
		<i18n:string key="lorem.ipsum" />
	</p>
		
	</body>
</html>