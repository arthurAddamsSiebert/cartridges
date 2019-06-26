package ${basePkg}.internal.remote.service;

import java.util.Set;

import com.google.inject.Injector;
import com.intershop.common.webapp.capi.server.ApplicationServerContext;
import com.intershop.common.webapp.capi.server.BaseApplication;

import ${basePkg}.internal.modules.${cap(serviceName)}ConfigurationModule;

/** * Registers all request resources */
public class ${cap(serviceName)}Application extends BaseApplication
{
    public static final String BASE_PATH = "${cap(serviceName)}";
    public static final String STANDARD_URLPATTERN = "/" + BASE_PATH + "/*";

    public ${cap(serviceName)}Application()
    {
        this(ApplicationServerContext.getInjector().createChildInjector(new ${cap(serviceName)}ConfigurationModule()));
    }

    public ${cap(serviceName)}Application(Injector injector)
    {
        super(injector);
    }

    @Override
    protected void addClasses(Set<Class<?>> classes)
    {
        classes.add(${cap(serviceName)}ServiceImpl.class);
    }
}