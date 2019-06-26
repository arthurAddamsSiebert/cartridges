package ${qualifier(listResource)};

import com.intershop.component.rest.capi.resource.AbstractRestCollectionResource;
import com.intershop.component.rest.capi.resourceobject.LinkRO;
import com.intershop.component.rest.capi.resourceobject.ResourceCollectionRO;

import ${RO};

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.intershop.component.rest.capi.RestUtils;

/**
 * A list resource that can produce collections of ${simpleName(RO)} or links denoting the item resource associated with
 * this resource.
 */
@Api("${name}")
public class ${simpleName(listResource)} extends AbstractRestCollectionResource
{
    @ApiOperation(value = "Gets a list of LinkROs which denote the item resource ${simpleName(itemResource)}")
    @GET
    @Produces({ MediaType.APPLICATION_JSON, MediaType.TEXT_XML })
    @Path("links")
    public ResourceCollectionRO<LinkRO> listLink${simpleName(RO)}s()
    {
        ResourceCollectionRO<LinkRO> linkList = new ResourceCollectionRO<LinkRO>("${name}");
        for (String name : getNames())
        {
            linkList.addElement(new LinkRO(name, RestUtils.addToURI(uriInfo.getPath(), name)));
        }
        return linkList;
    }

    @ApiOperation(value = "Gets a list of LinkROs which denote the item resource ${simpleName(itemResource)}")
    @GET
    @Produces({ MediaType.APPLICATION_JSON, MediaType.TEXT_XML })
    public List<${simpleName(RO)}> list${simpleName(RO)}s()
    {
        List<${simpleName(RO)}> list = new ArrayList<>();
        for (String name : getNames())
        {
            list.add(new ${simpleName(RO)}(name));
        }
        return list;
    }

    protected String[] getNames()
    {
        return new String[] { "a", "b", "c" };
    }
}
