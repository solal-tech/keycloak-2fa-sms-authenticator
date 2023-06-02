<#import "template.ftl" as layout>
<#import "components/button.ftl" as button>
<#import "components/button-group.ftl" as buttonGroup>
<#import "components/link.ftl" as link>
<@layout.registrationLayout displayInfo=true; section>
	<#if section = "header">
		${msg("smsAuthTitle",realm.displayName)}
	<#elseif section = "form">
		<form id="kc-sms-code-login-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
			<div class="${properties.kcFormGroupClass!}">
				<div class="prose">
					<div class="lead">${msg("smsAuthLabel")}</div>
					<div class="headings:h2 text-gray-500">${msg("smsAuthInfo")}</div>
				</div>
				<div class="${properties.kcInputWrapperClass!}">
					<input type="text" id="code" name="code" class="${properties.kcInputClass!}" autofocus/>
				</div>
			</div>
			<div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
				<div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
					<div class="${properties.kcFormOptionsWrapperClass!}">
                        <@link.kw color="secondary" href=url.loginUrl size="small">
                            ${kcSanitize(msg("backToLogin"))?no_esc}
                        </@link.kw>
					</div>
				</div>

				<div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <@buttonGroup.kw>
                        <@button.kw color="primary" name="submit_sms_otp" type="submit">
                            ${msg("doSubmit")}
                        </@button.kw>
                    </@buttonGroup.kw>
				</div>
			</div>
		</form>
	<#elseif section = "info" >
		${msg("smsAuthInstruction")}
	</#if>
</@layout.registrationLayout>
