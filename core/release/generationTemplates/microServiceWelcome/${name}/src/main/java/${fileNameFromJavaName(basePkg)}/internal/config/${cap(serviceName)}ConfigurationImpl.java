package ${basePkg}.internal.config;

import javax.inject.Inject;

import com.intershop.common.business.capi.configuration.ServiceConfiguration;
import ${basePkg}.capi.config.${cap(serviceName)}Configuration;

public class ${cap(serviceName)}ConfigurationImpl implements ${cap(serviceName)}Configuration
{
    @Inject
    private ServiceConfiguration serviceConfiguration;

    @Override
    public String getWelcomeText()
    {
        return serviceConfiguration.getConfig("${cap(serviceName)}.defaultWelcome",
                        ${cap(serviceName)}Configuration.super.getWelcomeText());
    }
}
