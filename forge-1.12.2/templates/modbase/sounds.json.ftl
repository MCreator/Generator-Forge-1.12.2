{
<#list sounds as sound>
"${sound.getName()}": {
  "category": "${sound.getCategory()}",
  <#if sound.getSubtitle()?has_content>"subtitle": "${sound.getSubtitle()}",</#if>
  "sounds": [
    <#list sound.getFiles() as file>
    {
      "name": "${modid}:${file}",
    "stream": <#if sound.getCategory() == "record" || sound.getCategory() == "music">true<#else>false</#if>
    }<#if file?has_next>,</#if>
    </#list>
  ]
}<#if sound?has_next>,</#if>
</#list>
}
