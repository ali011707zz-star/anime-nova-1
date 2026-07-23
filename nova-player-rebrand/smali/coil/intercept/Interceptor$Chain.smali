.class public interface abstract Lcoil/intercept/Interceptor$Chain;
.super Ljava/lang/Object;
.source "Interceptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/intercept/Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Chain"
.end annotation


# virtual methods
.method public abstract getRequest()Lcoil/request/ImageRequest;
.end method

.method public abstract getSize()Lcoil/size/Size;
.end method
