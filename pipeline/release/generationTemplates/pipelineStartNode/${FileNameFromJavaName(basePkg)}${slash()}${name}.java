package ${basePkg};

import com.intershop.beehive.core.capi.pipeline.node.StartNodeTypeConstants;
import com.intershop.beehive.core.capi.pipeline.node.StartNodeTypeConstants.CallMode;
import com.intershop.beehive.core.capi.pipeline.node.StartNodeTypeConstants.SessionMode;
import com.intershop.beehive.pipeline.capi.annotation.Attribute;
import com.intershop.beehive.pipeline.capi.annotation.PipelineNode;
import com.intershop.beehive.pipeline.capi.annotation.PipelineNode.Types;

import com.intershop.beehive.pipeline.capi.annotation.PipelineNodeInput;
import com.intershop.beehive.pipeline.capi.annotation.PipelineNodeOutput;

/**
 * ${description}
 * @Label ${displayName} 
 */
@PipelineNode(
 type = Types.StartNode
${if(public)} ,attributes = {@Attribute(name = StartNodeTypeConstants.ATTRIBUTE_NAME_CALL_MODE, value = StartNodeTypeConstants.PUBLIC) }
)
public class ${name}
{
    @PipelineNodeOutput(name = "next")
    private Output output;

    @PipelineNodeInput
    public Output start()
    {
        output.setDone(true);
        return output;
    }
    
    interface Output
    {
        void setDone(boolean done);
    }
}
