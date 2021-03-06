<%--
/**
 * Copyright (c) 2000-2013 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ include file="/html/portlet/invitation/init.jsp" %>

<liferay-portlet:actionURL portletConfiguration="true" var="configurationActionURL" />

<aui:form action="<%= configurationActionURL %>" method="post" name="fm">
	<aui:input name="<%= Constants.CMD %>" type="hidden" value="<%= Constants.UPDATE %>" />

	<liferay-ui:error key="emailMessageBody" message="please-enter-a-valid-body" />
	<liferay-ui:error key="emailMessageSubject" message="please-enter-a-valid-subject" />

	<liferay-ui:email-notification-settings
		emailBody='<%= LocalizationUtil.getLocalizationXmlFromPreferences(portletPreferences, renderRequest, "emailMessageBody", "preferences", ContentUtil.get(PropsValues.INVITATION_EMAIL_MESSAGE_BODY)) %>'
		emailDefinitionTerms="<%= InvitationUtil.getEmailDefinitionTerms(renderRequest) %>"
		emailParam="emailMessage"
		emailSubject='<%= LocalizationUtil.getLocalizationXmlFromPreferences(portletPreferences, renderRequest, "emailMessageSubject", "preferences", ContentUtil.get(PropsValues.INVITATION_EMAIL_MESSAGE_SUBJECT)) %>'
		showEmailEnabled="<%= false %>"
	/>

	<aui:button-row>
		<aui:button type="submit" />
	</aui:button-row>
</aui:form>