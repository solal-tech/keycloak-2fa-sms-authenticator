<#macro kw color="" component="button" size="" rest...>
  <#switch color>
    <#case "primary">
      <#assign colorClass="bg-solal-primary-600 text-white focus:ring-solal-primary-600 hover:bg-solal-primary-700">
      <#break>
    <#case "secondary">
      <#assign colorClass="bg-solal-secondary-100 text-solal-secondary-600 focus:ring-solal-secondary-600 hover:bg-solal-secondary-200 hover:text-solal-secondary-900">
      <#break>
  	<#case "third">
      <#assign colorClass="bg-solal-primary-200 text-black focus:ring-solal-primary-600 hover:bg-solal-primary-700">
      <#break>
    <#default>
      <#assign colorClass="bg-solal-primary-600 text-white focus:ring-solal-primary-600 hover:bg-solal-primary-700">
  </#switch>

  <#switch size>
    <#case "medium">
      <#assign sizeClass="px-4 py-2 text-sm">
      <#break>
    <#case "small">
      <#assign sizeClass="px-2 py-1 text-xs">
      <#break>
    <#default>
      <#assign sizeClass="px-4 py-2 text-sm">
  </#switch>

  <${component}
    class="${colorClass} ${sizeClass} flex justify-center relative rounded-lg w-full focus:outline-none focus:ring-2 focus:ring-offset-2"

    <#list rest as attrName, attrValue>
      ${attrName}="${attrValue}"
    </#list>
  >
    <#nested>
  </${component}>
</#macro>
