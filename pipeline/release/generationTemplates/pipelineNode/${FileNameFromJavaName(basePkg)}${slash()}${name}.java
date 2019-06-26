package ${basePkg};

import javax.annotation.Nonnull;

import com.intershop.beehive.pipeline.capi.annotation.PipelineNode;
import com.intershop.beehive.pipeline.capi.annotation.PipelineNodeInput;
import com.intershop.beehive.pipeline.capi.annotation.PipelineNodeOutput;

/**
 * ${description}
 * @Label ${displayName}
 */ 

@PipelineNode
public class ${name}
{
    @PipelineNodeOutput private Output out;
    
    @PipelineNodeOutput private Error error;
    
    @PipelineNodeInput
    public Object execute(Input input)
    {
        if ("invalid".equals(input.getName()))
        {
            error.setErrorMessage("The name is invalid");
            return error;
        }
        out.setMessage("Hello " + input.getName());
        return out;
    }
    
    public static interface Error
    {
        /**
         * Describes the error
         */
        void setErrorMessage(String message);
    }

    public static interface Output
    {
        /**
         * A computed message 
         */
        void setMessage(String message);
    }

    
    public static interface Input
    {
        /**
         * A required name to be processed as input parameter
         */
        @Nonnull String getName();
    }
}
