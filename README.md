# Determination and caching
----
## Determination

> Determination implemented in DeterminationObject class. Three methods can be used for corresponding purposes.

    + (Class)determineClassOfUnknownObject:(id)object;
    + (BOOL)unknownObject:(id)object conformsToProtocol:(Protocol *)protocol;
    + (BOOL)unknownObject:(id)object respondsToSelector:(SEL)selector;

----
## Caching

> ClassImplementation class used to cache file data

    + (void)cacheFileData:(NSData *)data withURL:(NSURL *)url;
    + (NSData *)cachedFileDataWithURL:(NSURL *)url;

> UIImage+Cache category is used to load image from url or cache

    + (void)imageWithURL:(NSURL *)url completion:(void (^)(UIImage *))completion;