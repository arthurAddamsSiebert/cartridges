package ${basePkg}.capi.remote;

import javax.inject.Inject;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;

import org.junit.Assert;
import org.junit.Before;
import org.junit.ClassRule;
import org.junit.Test;
import org.junit.rules.RuleChain;

import com.google.inject.Guice;
import com.google.inject.Injector;
import com.intershop.common.business.capi.modules.EnvironmentModule;
import com.intershop.common.eureka.capi.LocalEurekaModule;
import com.intershop.common.test.capi.eureka.EurekaServerRule;
import com.intershop.common.test.capi.server.ExternalApplicationServerRule;
import com.intershop.common.test.capi.server.ExternalApplicationServers;
import com.intershop.common.webinterface.capi.WebTargetFactory;

/**
 * This test uses an {@link ExternalApplicationServerRule} in order to start the service in an external VM. This service
 * is then connected using a {@link WebTarget} and tested.
 */
public class ${cap(serviceName)}ServiceTest
{
    public static ExternalApplicationServerRule appServerRule = new ExternalApplicationServerRule(
                    new ExternalApplicationServers().eurekaName("${serviceName}").services("${serviceName}")
                                    .vmProperty("eureka.waitUntilStatusReady", "true").server().name("Test")
                                    .getServersConfiguration());

    public static EurekaServerRule eurekaServerRule = new EurekaServerRule(url -> {
        System.setProperty("eureka.serviceUrl.default", url.toString());
        appServerRule.getServers().eurekaURL(url);
    });

    @ClassRule
    public static RuleChain serverRule = RuleChain.outerRule(eurekaServerRule).around(appServerRule);

    @Inject
    WebTargetFactory webTargetFactory;

    @Before
    public void init()
    {
        Injector injector = Guice.createInjector(new EnvironmentModule(), new LocalEurekaModule());
        injector.injectMembers(this);
    }

    @Test
    public void testWelcomeServer() throws Exception
    {
        Assert.assertTrue(0 < appServerRule.getServer("Test").getPort());

        WebTarget webTarget = webTargetFactory.createWebTarget(appServerRule.getServer("Test").getURI());

        // test welcome
        String welcomeMessage = webTarget.path("${serviceName}/text/" + "MyTestName").request().accept(MediaType.TEXT_PLAIN)
                        .get(String.class);
        Assert.assertEquals("Welcome MyTestName!", welcomeMessage);

        // test html formatted welcome
        String welcomeMessageHTML = webTarget.path("${serviceName}/html/" + "MyTestName").request().accept(MediaType.TEXT_HTML)
                        .get(String.class);
        Assert.assertTrue(welcomeMessageHTML.contains("Welcome MyTestName!"));

        // use service: resolving
        webTarget = webTargetFactory.createWebTarget("service://${serviceName}");
        welcomeMessage = webTarget.path("${serviceName}/text/" + "MyTestName").request().accept(MediaType.TEXT_PLAIN)
                        .get(String.class);
        Assert.assertEquals("Welcome MyTestName!", welcomeMessage);
    }

}