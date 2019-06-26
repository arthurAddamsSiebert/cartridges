package ${qualifier(itemResource)};

import com.intershop.component.rest.capi.resource.AbstractRestResource;
import com.intershop.component.rest.capi.response.ResponseStatusConstants;
import com.intershop.component.rest.capi.RestException;

import ${RO};

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 * An item resource that allows to get ${simpleName(RO)}s.
 */
@Api("${name}")
public class ${simpleName(itemResource)} extends AbstractRestResource
{
    @ApiOperation(value = "Gets a ${simpleName(RO)}", response = ${simpleName(RO)}.class)
    @ApiResponses({ @ApiResponse(code = ResponseStatusConstants.OK, message = ResponseStatusConstants.OK_MESSAGE),
                    @ApiResponse(code = ResponseStatusConstants.NOT_FOUND,
                                 message = ResponseStatusConstants.NOT_FOUND_MESSAGE) })
    
    @GET
    @Produces({ MediaType.APPLICATION_JSON, MediaType.TEXT_XML })
    @Consumes({ MediaType.APPLICATION_JSON, MediaType.TEXT_XML })
    public Response get${simpleName(RO)}()
    {
        if ("notFound".equals(getName()))
        {
            throw new RestException(RestException.ERROR_STATUS_NOT_FOUND);
        }
        
        ${simpleName(RO)} ro = new ${simpleName(RO)}(getName());
        return getResponseBuilder().entity(ro).build();
    }
}
