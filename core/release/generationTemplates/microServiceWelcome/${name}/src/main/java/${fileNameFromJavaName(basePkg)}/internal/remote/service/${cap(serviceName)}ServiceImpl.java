package ${basePkg}.internal.remote.service;

import java.text.MessageFormat;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.intershop.common.webapp.capi.ServiceInfo;
import com.intershop.common.webapp.capi.server.AbstractApplicationService;

import ${basePkg}.capi.config.${cap(serviceName)}Configuration;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import io.swagger.annotations.Contact;
import io.swagger.annotations.Info;
import io.swagger.annotations.License;
import io.swagger.annotations.SwaggerDefinition;

@SwaggerDefinition(basePath = "/" + ${cap(serviceName)}Application.BASE_PATH,
                info = @Info(description = "${description}", version = "1.0.0",
                                title = "${displayName}", termsOfService = ServiceInfo.TERMS_OF_SERVICE,
                                contact = @Contact(name = ServiceInfo.CONTACT_NAME, email = ServiceInfo.CONTACT_MAIL,
                                                url = ServiceInfo.CONTACT_URL),
                                license = @License(name = ServiceInfo.LICENSE_NAME, url = ServiceInfo.LICENSE_URL)),
                produces = { MediaType.TEXT_PLAIN, MediaType.TEXT_XML },
                schemes = { SwaggerDefinition.Scheme.HTTP, SwaggerDefinition.Scheme.HTTPS })

@Api("${displayName}")
@Path("/")
public class ${cap(serviceName)}ServiceImpl extends AbstractApplicationService{
    
    @Path("text/{name}")
    @ApiOperation("Computes a welcome text.")
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String welcome(@ApiParam(value = "The name of the person to welcome", example = "John") @PathParam("name") String name)
    {
        return MessageFormat.format(getInstance(${cap(serviceName)}Configuration.class).getWelcomeText(), name); 
    }
    
    @Path("html/{name}")
    @ApiOperation("Computes a welcome text in HTML.")
    @GET
    @Produces(MediaType.TEXT_HTML)
    public String welcomeHTML(@ApiParam(value = "The name of the person to welcome", example = "John") @PathParam("name") String name)
    {
        return MessageFormat.format(getInstance(${cap(serviceName)}Configuration.class).getWelcomeHTML(), name); 
    }
}