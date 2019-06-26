package ${basePkg}.internal.modules;

import com.google.inject.AbstractModule;
import ${basePkg}.capi.config.${cap(serviceName)}Configuration;
import ${basePkg}.internal.config.${cap(serviceName)}ConfigurationImpl;

public class ${cap(serviceName)}ConfigurationModule extends AbstractModule
{
    @Override
    protected void configure()
    {
        bind(${cap(serviceName)}Configuration.class).to(${cap(serviceName)}ConfigurationImpl.class).asEagerSingleton();
    }
}
