.class public interface abstract Lcoil/memory/WeakMemoryCache;
.super Ljava/lang/Object;
.source "WeakMemoryCache.kt"


# virtual methods
.method public abstract clearMemory()V
.end method

.method public abstract get(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/RealMemoryCache$Value;
.end method

.method public abstract remove(Landroid/graphics/Bitmap;)Z
.end method

.method public abstract set(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;ZI)V
.end method

.method public abstract trimMemory(I)V
.end method
