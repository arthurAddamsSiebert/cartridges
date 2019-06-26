package ${basePkg};

import com.intershop.beehive.core.capi.naming.NamingMgr;
import com.intershop.beehive.core.capi.pipeline.PipelineDictionary;
import com.intershop.beehive.core.capi.pipeline.node.EndNodeTypeConstants;
import com.intershop.beehive.core.capi.request.Request;
import com.intershop.beehive.core.capi.template.TemplateIdentifier;
import com.intershop.beehive.core.capi.pipeline.reference.TemplateReference;
import com.intershop.beehive.core.internal.pipeline.InteractionProcessor;
import com.intershop.beehive.core.internal.pipeline.InteractionProcessorException;
import com.intershop.beehive.core.internal.pipeline.PipelineMgr;
import com.intershop.beehive.pipeline.capi.annotation.Attribute;
import com.intershop.beehive.pipeline.capi.annotation.PipelineNode;
import com.intershop.beehive.pipeline.capi.annotation.PipelineNodeInput;
import com.intershop.beehive.pipeline.capi.annotation.PipelineNode.Types;
import com.intershop.beehive.pipeline.capi.annotation.PipelineNodeParameter;


/**
 * ${description}
 * @Label ${displayName}
 */ 
@PipelineNode(type=Types.EndNode,
    attributes={@Attribute(name=EndNodeTypeConstants.ATTRIBUTE_NAME, value=EndNodeTypeConstants.INTERACTION_NODE)})
public class ${name}
{
    /**
     * Select the template. 
     */
    @PipelineNodeParameter
    private TemplateReference templateName;

    @PipelineNodeInput(name="Input")
    public void execute(IO input) throws InteractionProcessorException
    {
        Request request = Request.getCurrent();
        request.getServletResponse().enableBufferedOutput(true);
        PipelineDictionary dictionary = request.getPipelineDictionary();
        dictionary.setTemplate(new TemplateIdentifier(templateName.getTemplate()));
        PipelineMgr pipelineMgr = NamingMgr.getManager(PipelineMgr.class);
        InteractionProcessor interactionProcessor = pipelineMgr.lookupInteractionProcessor("HTMLInteractionProcessor");
        interactionProcessor.executeInteraction(dictionary);
    }
    
    interface IO
    {
    }
}
