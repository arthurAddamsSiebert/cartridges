package ${qualifier(RO)};

import com.intershop.component.rest.capi.resourceobject.ExtensibleResourceObject;

/**
 * A value object that is used as value object by the ${itemResource}. 
 */
public class ${simpleName(RO)} extends ExtensibleResourceObject
{
    /**
     * Creates a new resource object.
     */ 
    public ${simpleName(RO)}()
    {
    }

    /**
     * Creates a new resource object with the given name. 
     * 
     * @param name The name
     */
    public ${simpleName(RO)}(String name)
    {
        super(name);
    }

    @Override
    protected void initImmutableAttributesSet()
    {
    }
}
