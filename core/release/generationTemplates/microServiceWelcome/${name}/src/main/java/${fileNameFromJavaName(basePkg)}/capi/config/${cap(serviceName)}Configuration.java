package ${basePkg}.capi.config;

/**
 * Environment of recurring orders
 */
public interface ${cap(serviceName)}Configuration
{
    default String getWelcomeText()
    {
        return "Welcome {0}!";
    }
    
    default String getWelcomeHTML()
    {
        return "<html><body><h1>Welcome {0}!</h1></body></html>";
    }

}
