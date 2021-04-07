<#macro makeBoundingBox positiveBoxes facing>
    return new AxisAlignedBB(0, 0, 0, 0, 0, 0)
    <#list positiveBoxes as box>
        .union(<@makeCuboid box facing/>)
    </#list>;
</#macro>

<#macro boundingBoxWithRotation positiveBoxes rotationMode>
    <#if rotationMode == 0>
        <@makeBoundingBox positiveBoxes "north"/>
    <#elseif rotationMode != 5>
        switch ((EnumFacing) state.getValue(BlockHorizontal.FACING)) {
            case SOUTH:
            default:
                <@makeBoundingBox positiveBoxes "south"/>
            case NORTH:
                <@makeBoundingBox positiveBoxes "north"/>
            case EAST:
                <@makeBoundingBox positiveBoxes "east"/>
            case WEST:
                <@makeBoundingBox positiveBoxes "west"/>
            <#if rotationMode == 2 || rotationMode == 4>
                case UP:
                    <@makeBoundingBox positiveBoxes "up"/>
                case DOWN:
                    <@makeBoundingBox positiveBoxes "down"/>
            </#if>
        }
    <#else>
        switch ((EnumFacing) state.getValue(BlockHorizontal.FACING)) {
            case SOUTH:
            case NORTH:
            default:
                <@makeBoundingBox positiveBoxes "north"/>
            case EAST:
            case WEST:
                <@makeBoundingBox positiveBoxes "up"/>
            case UP:
            case DOWN:
                <@makeBoundingBox positiveBoxes "log_up"/>
        }
    </#if>
</#macro>

<#macro makeCuboid box facing>
    <#if facing == "south">
        new AxisAlignedBB(${16 - box.mx}, ${box.my}, ${16 - box.mz}, ${16 - box.Mx}, ${box.My}, ${16 - box.Mz})
    <#elseif facing == "east">
        new AxisAlignedBB(${16 - box.mz}, ${box.my}, ${box.mx}, ${16 - box.Mz}, ${box.My}, ${box.Mx})
    <#elseif facing == "west">
        new AxisAlignedBB(${box.mz}, ${box.my}, ${16 - box.mx}, ${box.Mz}, ${box.My}, ${16 - box.Mx})
    <#elseif facing == "up">
        new AxisAlignedBB(${box.mx}, ${16 - box.mz}, ${box.my}, ${box.Mx}, ${16 - box.Mz}, ${box.My})
    <#elseif facing == "down">
        new AxisAlignedBB(${box.mx}, ${box.mz}, ${16 - box.my}, ${box.Mx}, ${box.Mz}, ${16 - box.My})
    <#elseif facing == "log_up">
        new AxisAlignedBB(${box.my}, ${16 - box.mx}, ${16 - box.mz}, ${box.My}, ${16 - box.Mx}, ${16 - box.Mz})
    <#else>
        new AxisAlignedBB(${box.mx}, ${box.my}, ${box.mz}, ${box.Mx}, ${box.My}, ${box.Mz})
    </#if>
</#macro>