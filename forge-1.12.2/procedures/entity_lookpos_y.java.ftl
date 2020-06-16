(${input$entity}.world.rayTraceBlocks(${input$entity}.getPositionEyes(1f), ${input$entity}.getPositionEyes(1f)
        .addVector(${input$entity}.getLook(1f).x * ${input$maxdistance}, ${input$entity}.getLook(1f).y * ${input$maxdistance}, ${input$entity}.getLook(1f).z * ${input$maxdistance}), false, false, true).getBlockPos().getY())
