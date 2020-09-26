<#-- @formatter:off -->
package ${package}.procedure;

@Elements${JavaModName}.ModElement.Tag public class Procedure${name} extends Elements${JavaModName}.ModElement {

	public Procedure${name} (Elements${JavaModName} instance) {
		super(instance, ${data.getModElement().getSortID()});
	}

	public static <#if return_type??>${return_type.getJavaType(generator.getWorkspace())}<#else>void</#if> executeProcedure(Map<String, Object> dependencies){
		<#list dependencies as dependency>
		if(dependencies.get("${dependency.getName()}")==null){
			System.err.println("Failed to load dependency ${dependency.getName()} for procedure ${name}!");
			<#if return_type??>return ${return_type.getDefaultValue(generator.getWorkspace())}<#else>return</#if>;
		}
        </#list>

		<#list dependencies as dependency>
            ${dependency.getType(generator.getWorkspace())} ${dependency.getName()} =(${dependency.getType(generator.getWorkspace())})dependencies.get("${dependency.getName()}" );
        </#list>

		${procedurecode}

	}

	${trigger_code}

	<#if has_trigger>
	@Override public void preInit(FMLPreInitializationEvent event) {
		MinecraftForge.EVENT_BUS.register(this);
	}
	</#if>

}
<#-- @formatter:on -->
