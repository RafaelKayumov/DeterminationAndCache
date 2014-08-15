# Determination and caching
----
## Determination

> Determination implemented in DeterminationObject class. Three methods can be used for corresponding purposes.

    + (Class)determineClassOfUnknownObject:(id)object;
    + (BOOL)unknownObject:(id)object conformsToProtocol:(Protocol *)protocol;
    + (BOOL)unknownObject:(id)object respondsToSelector:(SEL)selector;

----
## Caching

> ClassImplementation class Implements 2 approaches of caching. First is used to store images on disc.

    + (void)cacheImage:(UIImage *)image withURL:(NSURL *)url;
    + (UIImage *)cachedImageWithURL:(NSURL *)url;

> Second is NSCache usage.

    - (UIImage *)cachedImageForURL:(NSURL *)url;
    - (void)cacheImage:(UIImage *)image forURL:(NSURL *)url;

Use UIImage+Cache category to store image.
